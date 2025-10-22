.class Landroid/support/v4/app/FragmentStateManager;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"


# static fields
.field static final ARGUMENTS_KEY:Ljava/lang/String; = "arguments"

.field static final CHILD_FRAGMENT_MANAGER_KEY:Ljava/lang/String; = "childFragmentManager"

.field static final FRAGMENT_STATE_KEY:Ljava/lang/String; = "state"

.field static final REGISTRY_STATE_KEY:Ljava/lang/String; = "registryState"

.field static final SAVED_INSTANCE_STATE_KEY:Ljava/lang/String; = "savedInstanceState"

.field private static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final VIEW_REGISTRY_STATE_KEY:Ljava/lang/String; = "viewRegistryState"

.field static final VIEW_STATE_KEY:Ljava/lang/String; = "viewState"


# instance fields
.field private final mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

.field private final mFragment:Landroid/support/v4/app/Fragment;

.field private mFragmentManagerState:I

.field private final mFragmentStore:Landroid/support/v4/app/FragmentStore;

.field private mMovingToState:Z


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;
    .param p2, "fragmentStore"    # Landroid/support/v4/app/FragmentStore;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    .line 66
    iput-object p1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    .line 67
    iput-object p2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    .line 68
    iput-object p3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "dispatcher"    # Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;
    .param p2, "fragmentStore"    # Landroid/support/v4/app/FragmentStore;
    .param p3, "retainedFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "state"    # Landroid/os/Bundle;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    .line 121
    iput-object p1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    .line 122
    iput-object p2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    .line 123
    iput-object p3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 124
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 125
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 126
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput v0, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 127
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 128
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 132
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object p4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const-string v1, "arguments"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Ljava/lang/ClassLoader;Landroid/support/v4/app/FragmentFactory;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "dispatcher"    # Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;
    .param p2, "fragmentStore"    # Landroid/support/v4/app/FragmentStore;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "fragmentFactory"    # Landroid/support/v4/app/FragmentFactory;
    .param p5, "state"    # Landroid/os/Bundle;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    .line 87
    iput-object p1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    .line 88
    iput-object p2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    .line 91
    const-string/jumbo v0, "state"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentState;

    .line 92
    .local v0, "fs":Landroid/support/v4/app/FragmentState;
    invoke-virtual {v0, p4, p3}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 93
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object p5, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 96
    const-string v1, "arguments"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 100
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiated fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    return-void
.end method

.method private isFragmentViewChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 674
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 675
    return v1

    .line 677
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 678
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    .line 679
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-ne v0, v2, :cond_1

    .line 680
    return v1

    .line 682
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 684
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method activityCreated()V
    .locals 4

    .line 631
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    const/4 v0, 0x0

    .line 635
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "savedInstanceState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 638
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 639
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 641
    return-void
.end method

.method addViewToContainer()V
    .locals 5

    .line 884
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 885
    .local v0, "expectedParent":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 887
    .local v1, "actualParent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 889
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v2, v0, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onWrongNestedHierarchy(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;I)V

    .line 897
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentStore;->findFragmentIndexInContainer(Landroid/support/v4/app/Fragment;)I

    move-result v2

    .line 898
    .local v2, "index":I
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 899
    return-void
.end method

.method attach()V
    .locals 6

    .line 476
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    const-string v1, " that does not belong to this FragmentManager!"

    const-string v2, " declared target fragment "

    const-string v3, "Fragment "

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v0

    .line 485
    .local v0, "targetFragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v0, :cond_1

    .line 490
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 486
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 492
    .end local v0    # "targetFragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v0

    .line 495
    .restart local v0    # "targetFragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v0, :cond_3

    goto :goto_0

    .line 496
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 501
    .end local v0    # "targetFragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_4
    const/4 v0, 0x0

    .line 503
    .restart local v0    # "targetFragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :goto_0
    if-eqz v0, :cond_5

    .line 504
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 506
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 507
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 508
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Z)V

    .line 509
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performAttach()V

    .line 510
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Z)V

    .line 511
    return-void
.end method

.method computeExpectedState()I
    .locals 9

    .line 158
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mState:I

    return v0

    .line 162
    :cond_0
    iget v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    .line 165
    .local v0, "maxState":I
    sget-object v1, Landroid/support/v4/app/FragmentStateManager$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 179
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 176
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 177
    goto :goto_0

    .line 173
    :pswitch_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 174
    goto :goto_0

    .line 170
    :pswitch_2
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    goto :goto_0

    .line 168
    :pswitch_3
    nop

    .line 183
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_1

    .line 187
    iget v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 190
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 191
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 194
    :cond_1
    iget v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    if-ge v1, v6, :cond_2

    .line 199
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 204
    :cond_2
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 209
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mInDynamicContainer:Z

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    .line 213
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v1, :cond_5

    .line 218
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 220
    :cond_5
    const/4 v1, 0x0

    .line 221
    .local v1, "awaitingEffect":Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 222
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 223
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 222
    invoke-static {v7, v8}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v7

    .line 224
    .local v7, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v7, p0}, Landroid/support/v4/app/SpecialEffectsController;->getAwaitingCompletionLifecycleImpact(Landroid/support/v4/app/FragmentStateManager;)Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v1

    .line 226
    .end local v7    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    :cond_6
    sget-object v7, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v8, 0x3

    if-ne v1, v7, :cond_7

    .line 228
    const/4 v2, 0x6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 229
    :cond_7
    sget-object v7, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v1, v7, :cond_8

    .line 231
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 232
    :cond_8
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v7, v7, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v7, :cond_a

    .line 233
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 235
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 238
    :cond_9
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 243
    :cond_a
    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v3, :cond_b

    .line 244
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 248
    :cond_b
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    if-eqz v2, :cond_c

    .line 249
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 251
    :cond_c
    invoke-static {v5}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeExpectedState() of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_d
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method create()V
    .locals 4

    .line 514
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    const/4 v0, 0x0

    .line 518
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "savedInstanceState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_2

    .line 522
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 523
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 524
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 529
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState()V

    .line 531
    :goto_0
    return-void
.end method

.method createView()V
    .locals 10

    .line 534
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto CREATE_VIEW: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    const/4 v1, 0x0

    .line 543
    .local v1, "savedInstanceState":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 544
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v4, "savedInstanceState"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 546
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 547
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 548
    .local v4, "container":Landroid/view/ViewGroup;
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 549
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    goto/16 :goto_1

    .line 550
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v5, :cond_7

    .line 551
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 555
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getContainer()Landroid/support/v4/app/FragmentContainer;

    move-result-object v5

    .line 556
    .local v5, "fragmentContainer":Landroid/support/v4/app/FragmentContainer;
    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/view/ViewGroup;

    .line 557
    if-nez v4, :cond_5

    .line 558
    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mInDynamicContainer:Z

    if-eqz v6, :cond_4

    goto :goto_1

    .line 561
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .local v0, "resName":Ljava/lang/String;
    goto :goto_0

    .line 562
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "unknown"

    move-object v0, v2

    .line 565
    .local v0, "resName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No view found for id 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 566
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    .end local v0    # "resName":Ljava/lang/String;
    :cond_5
    instance-of v6, v4, Landroid/support/v4/app/FragmentContainerView;

    if-nez v6, :cond_7

    .line 571
    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-static {v6, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onWrongFragmentContainer(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 552
    .end local v5    # "fragmentContainer":Landroid/support/v4/app/FragmentContainer;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create fragment "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for a container view with no id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_7
    :goto_1
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v4, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 576
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v3, v4, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 577
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v6, 0x2

    if-eqz v5, :cond_d

    .line 578
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveto VIEW_CREATED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 582
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    sget v7, Landroid/support/fragment/R$id;->fragment_container_view_tag:I

    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 583
    if-eqz v4, :cond_9

    .line 584
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->addViewToContainer()V

    .line 586
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_a

    .line 587
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 591
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    .line 593
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 594
    .local v0, "fragmentView":Landroid/view/View;
    new-instance v7, Landroid/support/v4/app/FragmentStateManager$1;

    invoke-direct {v7, p0, v0}, Landroid/support/v4/app/FragmentStateManager$1;-><init>(Landroid/support/v4/app/FragmentStateManager;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 607
    .end local v0    # "fragmentView":Landroid/view/View;
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performViewCreated()V

    .line 608
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7, v8, v1, v5}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 610
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 611
    .local v0, "postOnViewCreatedVisibility":I
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    .line 612
    .local v5, "postOnViewCreatedAlpha":F
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v5}, Landroid/support/v4/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    .line 613
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_d

    if-nez v0, :cond_d

    .line 615
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 616
    .local v7, "focusedView":Landroid/view/View;
    if-eqz v7, :cond_c

    .line 617
    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v8, v7}, Landroid/support/v4/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 618
    invoke-static {v6}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestFocus: Saved focused view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_c
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 627
    .end local v0    # "postOnViewCreatedVisibility":I
    .end local v5    # "postOnViewCreatedAlpha":F
    .end local v7    # "focusedView":Landroid/view/View;
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput v6, v0, Landroid/support/v4/app/Fragment;->mState:I

    .line 628
    return-void
.end method

.method destroy()V
    .locals 10

    .line 805
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 810
    .local v0, "beingRemoved":Z
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    if-nez v4, :cond_2

    .line 811
    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 813
    :cond_2
    if-nez v0, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    .line 814
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerViewModel;->shouldDestroy(Landroid/support/v4/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 815
    .local v4, "shouldDestroy":Z
    :goto_2
    if-eqz v4, :cond_d

    .line 816
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 818
    .local v5, "host":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<*>;"
    instance-of v6, v5, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v6, :cond_5

    .line 819
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerViewModel;->isCleared()Z

    move-result v1

    .local v1, "shouldClear":Z
    goto :goto_3

    .line 820
    .end local v1    # "shouldClear":Z
    :cond_5
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 821
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 822
    .local v6, "activity":Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v7

    xor-int/2addr v1, v7

    .line 823
    .end local v6    # "activity":Landroid/app/Activity;
    .restart local v1    # "shouldClear":Z
    goto :goto_3

    .line 824
    .end local v1    # "shouldClear":Z
    :cond_6
    const/4 v1, 0x1

    .line 826
    .restart local v1    # "shouldClear":Z
    :goto_3
    if-eqz v0, :cond_7

    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    if-eqz v6, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    .line 827
    :cond_8
    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/app/FragmentManagerViewModel;->clearNonConfigState(Landroid/support/v4/app/Fragment;Z)V

    .line 829
    :cond_9
    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 830
    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 834
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentStateManager;

    .line 835
    .local v6, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v6, :cond_a

    .line 836
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 837
    .local v7, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v9, v7, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 838
    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v8, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 839
    iput-object v3, v7, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 842
    .end local v6    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v7    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    goto :goto_4

    .line 843
    :cond_b
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 846
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v6, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 848
    :cond_c
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentStore;->makeInactive(Landroid/support/v4/app/FragmentStateManager;)V

    .line 849
    .end local v1    # "shouldClear":Z
    .end local v5    # "host":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<*>;"
    goto :goto_5

    .line 850
    :cond_d
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 851
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 852
    .local v1, "target":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_e

    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_e

    .line 856
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 859
    .end local v1    # "target":Landroid/support/v4/app/Fragment;
    :cond_e
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 861
    :goto_5
    return-void
.end method

.method destroyFragmentView()V
    .locals 3

    .line 784
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 793
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 794
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 795
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 796
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 799
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/support/v4/app/FragmentViewLifecycleOwner;

    .line 800
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 802
    return-void
.end method

.method detach()V
    .locals 5

    .line 864
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performDetach()V

    .line 868
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V

    .line 870
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, -0x1

    iput v3, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 871
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 872
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v3, v1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 873
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v3, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 874
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    .line 875
    .local v4, "beingRemoved":Z
    :cond_1
    if-nez v4, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManagerViewModel;->shouldDestroy(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 876
    :cond_2
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->initState()V

    .line 881
    :cond_4
    return-void
.end method

.method ensureInflatedView()V
    .locals 5

    .line 408
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v0, v0, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_3

    .line 409
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "savedInstanceState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 417
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 419
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 421
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    sget v3, Landroid/support/fragment/R$id;->fragment_container_view_tag:I

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 422
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performViewCreated()V

    .line 424
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 426
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 429
    .end local v0    # "savedInstanceState":Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method moveToExpectedState()V
    .locals 11

    .line 259
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_1

    .line 260
    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    .line 269
    const/4 v4, 0x0

    .line 271
    .local v4, "stateWasChanged":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->computeExpectedState()I

    move-result v5

    move v6, v5

    .local v6, "newState":I
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v8, 0x3

    if-eq v5, v7, :cond_9

    .line 272
    const/4 v4, 0x1

    .line 273
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mState:I

    if-le v6, v5, :cond_3

    .line 275
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mState:I

    add-int/2addr v5, v3

    .line 276
    .local v5, "nextStep":I
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 309
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->resume()V

    goto :goto_1

    .line 306
    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v8, 0x6

    iput v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    .line 307
    goto :goto_1

    .line 303
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->start()V

    .line 304
    goto :goto_1

    .line 291
    :pswitch_3
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 292
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 294
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 293
    invoke-static {v7, v8}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v7

    .line 295
    .local v7, "controller":Landroid/support/v4/app/SpecialEffectsController;
    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    .line 296
    .local v8, "visibility":I
    nop

    .line 297
    invoke-static {v8}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->from(I)Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v9

    .line 298
    .local v9, "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    invoke-virtual {v7, v9, p0}, Landroid/support/v4/app/SpecialEffectsController;->enqueueAdd(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/FragmentStateManager;)V

    .line 300
    .end local v7    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    .end local v8    # "visibility":I
    .end local v9    # "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    :cond_2
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v8, 0x4

    iput v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    .line 301
    goto :goto_1

    .line 288
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->activityCreated()V

    .line 289
    goto :goto_1

    .line 284
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->ensureInflatedView()V

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->createView()V

    .line 286
    goto :goto_1

    .line 281
    :pswitch_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->create()V

    .line 282
    goto :goto_1

    .line 278
    :pswitch_7
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->attach()V

    .line 279
    nop

    .line 312
    .end local v5    # "nextStep":I
    :goto_1
    goto :goto_0

    .line 314
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mState:I

    sub-int/2addr v5, v3

    .line 315
    .restart local v5    # "nextStep":I
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_3

    .line 317
    :pswitch_8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->pause()V

    .line 318
    goto/16 :goto_3

    .line 320
    :pswitch_9
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v8, 0x5

    iput v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    .line 321
    goto/16 :goto_3

    .line 323
    :pswitch_a
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->stop()V

    .line 324
    goto/16 :goto_3

    .line 326
    :pswitch_b
    invoke-static {v8}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_4
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v7, v7, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    if-eqz v7, :cond_5

    .line 330
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v9, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2

    .line 331
    :cond_5
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 334
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    .line 335
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->saveViewState()V

    .line 338
    :cond_6
    :goto_2
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_7

    .line 339
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 341
    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 340
    invoke-static {v7, v9}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v7

    .line 342
    .restart local v7    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v7, p0}, Landroid/support/v4/app/SpecialEffectsController;->enqueueRemove(Landroid/support/v4/app/FragmentStateManager;)V

    .line 344
    .end local v7    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    :cond_7
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    .line 345
    goto :goto_3

    .line 347
    :pswitch_c
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v0, v7, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 348
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput v1, v7, Landroid/support/v4/app/Fragment;->mState:I

    .line 349
    goto :goto_3

    .line 351
    :pswitch_d
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->destroyFragmentView()V

    .line 352
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput v3, v7, Landroid/support/v4/app/Fragment;->mState:I

    .line 353
    goto :goto_3

    .line 355
    :pswitch_e
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v7, v7, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 356
    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentStore;->getSavedState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_8

    .line 357
    iget-object v7, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v8, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 359
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->destroy()V

    .line 360
    goto :goto_3

    .line 362
    :pswitch_f
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->detach()V

    .line 365
    .end local v5    # "nextStep":I
    :goto_3
    goto/16 :goto_0

    .line 367
    :cond_9
    if-nez v4, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    .line 371
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    if-nez v1, :cond_c

    .line 372
    invoke-static {v8}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v5, v3}, Landroid/support/v4/app/FragmentManagerViewModel;->clearNonConfigState(Landroid/support/v4/app/Fragment;Z)V

    .line 376
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentStore;->makeInactive(Landroid/support/v4/app/FragmentStateManager;)V

    .line 377
    invoke-static {v8}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initState called for fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->initState()V

    .line 383
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_10

    .line 384
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 386
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 388
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 387
    invoke-static {v1, v2}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v1

    .line 389
    .local v1, "controller":Landroid/support/v4/app/SpecialEffectsController;
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_d

    .line 390
    invoke-virtual {v1, p0}, Landroid/support/v4/app/SpecialEffectsController;->enqueueHide(Landroid/support/v4/app/FragmentStateManager;)V

    goto :goto_4

    .line 392
    :cond_d
    invoke-virtual {v1, p0}, Landroid/support/v4/app/SpecialEffectsController;->enqueueShow(Landroid/support/v4/app/FragmentStateManager;)V

    .line 395
    .end local v1    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    :cond_e
    :goto_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v1, :cond_f

    .line 396
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->invalidateMenuForFragment(Landroid/support/v4/app/Fragment;)V

    .line 398
    :cond_f
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 399
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 400
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->dispatchOnHiddenChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v4    # "stateWasChanged":Z
    .end local v6    # "newState":I
    :cond_10
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentStateManager;->mMovingToState:Z

    .line 404
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method pause()V
    .locals 3

    .line 688
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 692
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V

    .line 693
    return-void
.end method

.method restoreState(Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 433
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 437
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 439
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 443
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "viewState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    nop

    .line 455
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v3, "viewRegistryState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 458
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 459
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentState;

    .line 460
    .local v1, "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v1, :cond_3

    .line 461
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v1, Landroid/support/v4/app/FragmentState;->mTargetWho:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 462
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v3, v1, Landroid/support/v4/app/FragmentState;->mTargetRequestCode:I

    iput v3, v2, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 463
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 464
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 465
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    .line 467
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v3, v1, Landroid/support/v4/app/FragmentState;->mUserVisibleHint:Z

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 470
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_4

    .line 471
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 473
    :cond_4
    return-void

    .line 450
    .end local v1    # "fs":Landroid/support/v4/app/FragmentState;
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Landroid/os/BadParcelableException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore view hierarchy state for fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 452
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method resume()V
    .locals 5

    .line 652
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 656
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentStateManager;->isFragmentViewChild(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 658
    .local v2, "success":Z
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Restoring focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 660
    if-eqz v2, :cond_1

    const-string/jumbo v4, "succeeded"

    goto :goto_0

    :cond_1
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resulting in focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 661
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v2    # "success":Z
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 665
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 666
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V

    .line 667
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 668
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 669
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 670
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 671
    return-void
.end method

.method saveInstanceState()Landroid/support/v4/app/Fragment$SavedState;
    .locals 2

    .line 756
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 757
    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 759
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method saveState()Landroid/os/Bundle;
    .locals 7

    .line 704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v0, "stateBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 708
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 714
    :cond_0
    new-instance v1, Landroid/support/v4/app/FragmentState;

    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v3}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 715
    .local v1, "fs":Landroid/support/v4/app/FragmentState;
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 718
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mState:I

    if-le v3, v2, :cond_6

    .line 719
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 720
    .local v2, "savedInstanceState":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 721
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    const-string v3, "savedInstanceState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 724
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 726
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 727
    .local v3, "savedStateRegistryState":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v4, v3}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 728
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 729
    const-string v4, "registryState"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 732
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 733
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    move-result-object v4

    .line 734
    .local v4, "childFragmentManagerState":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 735
    const-string v5, "childFragmentManager"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 739
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentStateManager;->saveViewState()V

    .line 741
    :cond_4
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    .line 742
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string/jumbo v6, "viewState"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 744
    :cond_5
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 745
    iget-object v5, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    const-string/jumbo v6, "viewRegistryState"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 749
    .end local v2    # "savedInstanceState":Landroid/os/Bundle;
    .end local v3    # "savedStateRegistryState":Landroid/os/Bundle;
    .end local v4    # "childFragmentManagerState":Landroid/os/Bundle;
    :cond_6
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 750
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    const-string v3, "arguments"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 752
    :cond_7
    return-object v0
.end method

.method saveViewState()V
    .locals 3

    .line 763
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 772
    .local v0, "mStateArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 773
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 774
    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v0, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 776
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v1, "outBundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/support/v4/app/FragmentViewLifecycleOwner;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentViewLifecycleOwner;->performSave(Landroid/os/Bundle;)V

    .line 778
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 779
    iget-object v2, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v2, Landroid/support/v4/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 781
    :cond_3
    return-void
.end method

.method setFragmentManagerState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 147
    iput p1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragmentManagerState:I

    .line 148
    return-void
.end method

.method start()V
    .locals 3

    .line 644
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 648
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 649
    return-void
.end method

.method stop()V
    .locals 3

    .line 696
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 700
    iget-object v0, p0, Landroid/support/v4/app/FragmentStateManager;->mDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStateManager;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V

    .line 701
    return-void
.end method

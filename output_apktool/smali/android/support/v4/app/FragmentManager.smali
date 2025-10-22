.class public abstract Landroid/support/v4/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/FragmentResultOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;,
        Landroid/support/v4/app/FragmentManager$RestoreBackStackState;,
        Landroid/support/v4/app/FragmentManager$OpGenerator;,
        Landroid/support/v4/app/FragmentManager$SaveBackStackState;,
        Landroid/support/v4/app/FragmentManager$ClearBackStackState;,
        Landroid/support/v4/app/FragmentManager$PopBackStackState;,
        Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;,
        Landroid/support/v4/app/FragmentManager$BackStackEntry;,
        Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;,
        Landroid/support/v4/app/FragmentManager$FragmentIntentSenderContract;,
        Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;,
        Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EXTRA_CREATED_FILLIN_INTENT:Ljava/lang/String; = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

.field private static final FRAGMENT_KEY_PREFIX:Ljava/lang/String; = "fragment_"

.field private static final FRAGMENT_MANAGER_STATE_KEY:Ljava/lang/String; = "state"

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1

.field private static final RESULT_KEY_PREFIX:Ljava/lang/String; = "result_"

.field private static final SAVED_STATE_KEY:Ljava/lang/String; = "android:support:fragments"

.field public static final TAG:Ljava/lang/String; = "FragmentManager"

.field static USE_PREDICTIVE_BACK:Z


# instance fields
.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBackStackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/support/v4/app/FragmentContainer;

.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field private mDefaultSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

.field private mDestroyed:Z

.field private mExecCommit:Ljava/lang/Runnable;

.field private mExecutingActions:Z

.field private mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

.field private final mFragmentStore:Landroid/support/v4/app/FragmentStore;

.field mHandlingTransitioningOp:Z

.field private mHavePendingDeferredStart:Z

.field private mHost:Landroid/support/v4/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private mHostFragmentFactory:Landroid/support/v4/app/FragmentFactory;

.field mLaunchedFragments:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflaterFactory:Landroid/support/v4/app/FragmentLayoutInflaterFactory;

.field private final mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

.field private final mMenuProvider:Landroidx/core/view/MenuProvider;

.field private mNeedMenuInvalidate:Z

.field private mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

.field private final mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/support/v4/app/FragmentOnAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final mOnConfigurationChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/support/v4/app/MultiWindowModeChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/support/v4/app/PictureInPictureModeChangedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTrimMemoryListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/support/v4/app/Fragment;

.field private final mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentManager$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroid/support/v4/app/Fragment;

.field private mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

.field private mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSaved:Z

.field private mStopped:Z

.field private mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

.field private mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTransitioningOp:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/FragmentManager;->DEBUG:Z

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/FragmentManager;->USE_PREDICTIVE_BACK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 508
    new-instance v0, Landroid/support/v4/app/FragmentStore;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentStore;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 511
    new-instance v0, Landroid/support/v4/app/FragmentLayoutInflaterFactory;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentLayoutInflaterFactory;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mLayoutInflaterFactory:Landroid/support/v4/app/FragmentLayoutInflaterFactory;

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 519
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 520
    new-instance v2, Landroid/support/v4/app/FragmentManager$1;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/app/FragmentManager$1;-><init>(Landroid/support/v4/app/FragmentManager;Z)V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 587
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 589
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 590
    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    .line 592
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 593
    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    .line 594
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 595
    invoke-static {v1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 598
    new-instance v1, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    .line 600
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 603
    new-instance v1, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda2;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    .line 608
    new-instance v1, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda3;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    .line 613
    new-instance v1, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda4;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    .line 619
    new-instance v1, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda5;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    .line 626
    new-instance v1, Landroid/support/v4/app/FragmentManager$2;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$2;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    .line 648
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    .line 654
    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    .line 655
    new-instance v1, Landroid/support/v4/app/FragmentManager$3;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$3;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHostFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    .line 663
    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

    .line 664
    new-instance v0, Landroid/support/v4/app/FragmentManager$4;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManager$4;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

    .line 677
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 697
    new-instance v0, Landroid/support/v4/app/FragmentManager$5;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManager$5;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/FragmentManager;

    .line 109
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->endAnimatingAwayFragments()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/app/FragmentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentManager;

    .line 109
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/app/FragmentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentManager;

    .line 109
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/FragmentStore;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentManager;

    .line 109
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    return-object v0
.end method

.method private checkStateLoss()V
    .locals 2

    .line 1840
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    return-void

    .line 1841
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .locals 1

    .line 1997
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 1998
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1999
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2000
    return-void
.end method

.method private clearBackStackStateViewModels()V
    .locals 7

    .line 1478
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerViewModel;->isCleared()Z

    move-result v0

    .local v0, "shouldClear":Z
    goto :goto_0

    .line 1480
    .end local v0    # "shouldClear":Z
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1482
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 1483
    .local v0, "shouldClear":Z
    goto :goto_0

    .line 1484
    .end local v0    # "shouldClear":Z
    :cond_1
    const/4 v0, 0x1

    .line 1486
    .restart local v0    # "shouldClear":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1487
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackState;

    .line 1488
    .local v2, "backStackState":Landroid/support/v4/app/BackStackState;
    iget-object v3, v2, Landroid/support/v4/app/BackStackState;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1489
    .local v4, "who":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentStore;->getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/support/v4/app/FragmentManagerViewModel;->clearNonConfigState(Ljava/lang/String;Z)V

    .line 1490
    .end local v4    # "who":Ljava/lang/String;
    goto :goto_2

    .line 1491
    .end local v2    # "backStackState":Landroid/support/v4/app/BackStackState;
    :cond_2
    goto :goto_1

    .line 1493
    :cond_3
    return-void
.end method

.method private collectAllSpecialEffectsController()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/support/v4/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    .line 2328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2330
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentStateManager;

    .line 2331
    .local v2, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2332
    .local v3, "container":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 2333
    nop

    .line 2334
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroid/support/v4/app/SpecialEffectsControllerFactory;

    move-result-object v4

    .line 2333
    invoke-static {v3, v4}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsControllerFactory;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2336
    .end local v2    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v3    # "container":Landroid/view/ViewGroup;
    :cond_0
    goto :goto_0

    .line 2337
    :cond_1
    return-object v0
.end method

.method private dispatchParentPrimaryNavigationFragmentChanged(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 3473
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3474
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 3476
    :cond_0
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 5
    .param p1, "nextState"    # I

    .line 3291
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 3292
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentStore;->dispatchStateChange(I)V

    .line 3293
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/FragmentManager;->moveToState(IZ)V

    .line 3294
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v2

    .line 3295
    .local v2, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/SpecialEffectsController;

    .line 3296
    .local v4, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController;->forceCompleteAllOperations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    .end local v4    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    goto :goto_0

    .line 3299
    .end local v2    # "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 3300
    nop

    .line 3301
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->execPendingActions(Z)Z

    .line 3302
    return-void

    .line 3299
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 3300
    throw v0
.end method

.method private doPendingDeferredStart()V
    .locals 1

    .line 2374
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_0

    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 2376
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->startPendingDeferredFragments()V

    .line 2378
    :cond_0
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    sput-boolean p0, Landroid/support/v4/app/FragmentManager;->DEBUG:Z

    .line 148
    return-void
.end method

.method public static enablePredictiveBack(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 134
    sput-boolean p0, Landroid/support/v4/app/FragmentManager;->USE_PREDICTIVE_BACK:Z

    .line 135
    return-void
.end method

.method private endAnimatingAwayFragments()V
    .locals 3

    .line 2321
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    .line 2322
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/SpecialEffectsController;

    .line 2323
    .local v2, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController;->forceCompleteAllOperations()V

    .line 2324
    .end local v2    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    goto :goto_0

    .line 2325
    :cond_0
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2
    .param p1, "allowStateLoss"    # Z

    .line 1925
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    if-nez v0, :cond_5

    .line 1929
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1930
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1931
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1933
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1937
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1941
    if-nez p1, :cond_2

    .line 1942
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->checkStateLoss()V

    .line 1945
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 1947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 1949
    :cond_3
    return-void

    .line 1938
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1926
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 4
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2251
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 2252
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 2253
    .local v1, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2254
    .local v2, "isPop":Z
    if-eqz v2, :cond_0

    .line 2255
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2256
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->executePopOps()V

    goto :goto_1

    .line 2258
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2259
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->executeOps()V

    .line 2251
    .end local v1    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2262
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 11
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2108
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v0, v0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2109
    .local v0, "allowReordering":Z
    const/4 v1, 0x0

    .line 2110
    .local v1, "addToBackStack":Z
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    .line 2113
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2115
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2116
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 2117
    .local v2, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    move v3, p3

    .local v3, "recordNum":I
    :goto_1
    const/4 v4, 0x1

    if-ge v3, p4, :cond_4

    .line 2118
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    .line 2119
    .local v5, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 2120
    .local v6, "isPop":Z
    if-nez v6, :cond_1

    .line 2121
    iget-object v7, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v7, v2}, Landroid/support/v4/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_2

    .line 2123
    :cond_1
    iget-object v7, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v7, v2}, Landroid/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 2125
    :goto_2
    if-nez v1, :cond_3

    iget-boolean v7, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    move v1, v4

    .line 2117
    .end local v5    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v6    # "isPop":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2127
    .end local v3    # "recordNum":I
    :cond_4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2129
    if-nez v0, :cond_7

    iget v3, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    if-lt v3, v4, :cond_7

    .line 2132
    move v3, p3

    .local v3, "index":I
    :goto_4
    if-ge v3, p4, :cond_7

    .line 2133
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    .line 2134
    .restart local v5    # "record":Landroid/support/v4/app/BackStackRecord;
    iget-object v6, v5, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2135
    .local v7, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v8, v7, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 2136
    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v8, :cond_5

    iget-object v9, v8, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v9, :cond_5

    .line 2137
    nop

    .line 2138
    invoke-virtual {p0, v8}, Landroid/support/v4/app/FragmentManager;->createOrGetFragmentStateManager(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v9

    .line 2139
    .local v9, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    iget-object v10, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v10, v9}, Landroid/support/v4/app/FragmentStore;->makeActive(Landroid/support/v4/app/FragmentStateManager;)V

    .line 2141
    .end local v7    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v8    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v9    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_5
    goto :goto_5

    .line 2132
    .end local v5    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2144
    .end local v3    # "index":I
    :cond_7
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManager;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2148
    add-int/lit8 v3, p4, -0x1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2150
    .local v3, "isPop":Z
    if-eqz v1, :cond_c

    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2151
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2153
    .local v5, "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/BackStackRecord;

    .line 2154
    .local v7, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManager;->fragmentsFromRecord(Landroid/support/v4/app/BackStackRecord;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2155
    .end local v7    # "record":Landroid/support/v4/app/BackStackRecord;
    goto :goto_6

    .line 2156
    :cond_8
    iget-object v6, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-nez v6, :cond_c

    .line 2158
    iget-object v6, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 2160
    .local v7, "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 2161
    .local v9, "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v7, v9, v3}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChangeStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 2162
    .end local v9    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_8

    .line 2163
    .end local v7    # "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    :cond_9
    goto :goto_7

    .line 2164
    :cond_a
    iget-object v6, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 2166
    .restart local v7    # "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 2167
    .restart local v9    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v7, v9, v3}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChangeCommitted(Landroid/support/v4/app/Fragment;Z)V

    .line 2168
    .end local v9    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_a

    .line 2169
    .end local v7    # "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    :cond_b
    goto :goto_9

    .line 2174
    .end local v5    # "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    :cond_c
    move v5, p3

    .local v5, "index":I
    :goto_b
    if-ge v5, p4, :cond_12

    .line 2175
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/BackStackRecord;

    .line 2176
    .local v6, "record":Landroid/support/v4/app/BackStackRecord;
    if-eqz v3, :cond_f

    .line 2178
    iget-object v7, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "opIndex":I
    :goto_c
    if-ltz v7, :cond_e

    .line 2179
    iget-object v8, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2180
    .local v8, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v9, v8, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 2181
    .restart local v9    # "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v9, :cond_d

    .line 2182
    nop

    .line 2183
    invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManager;->createOrGetFragmentStateManager(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v10

    .line 2184
    .local v10, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 2178
    .end local v8    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v9    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v10    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .end local v7    # "opIndex":I
    :cond_e
    goto :goto_e

    .line 2188
    :cond_f
    iget-object v7, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2189
    .restart local v8    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v9, v8, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 2190
    .restart local v9    # "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v9, :cond_10

    .line 2191
    nop

    .line 2192
    invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManager;->createOrGetFragmentStateManager(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v10

    .line 2193
    .restart local v10    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 2195
    .end local v8    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v9    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v10    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_10
    goto :goto_d

    .line 2174
    .end local v6    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_11
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 2200
    .end local v5    # "index":I
    :cond_12
    iget v5, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, v5, v4}, Landroid/support/v4/app/FragmentManager;->moveToState(IZ)V

    .line 2201
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v4/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v4

    .line 2203
    .local v4, "changedControllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/SpecialEffectsController;

    .line 2204
    .local v6, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v6, v3}, Landroid/support/v4/app/SpecialEffectsController;->updateOperationDirection(Z)V

    .line 2205
    invoke-virtual {v6}, Landroid/support/v4/app/SpecialEffectsController;->markPostponedState()V

    .line 2206
    invoke-virtual {v6}, Landroid/support/v4/app/SpecialEffectsController;->executePendingOperations()V

    .line 2207
    .end local v6    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    goto :goto_f

    .line 2209
    :cond_13
    move v5, p3

    .local v5, "recordNum":I
    :goto_10
    if-ge v5, p4, :cond_15

    .line 2210
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/BackStackRecord;

    .line 2211
    .local v6, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2212
    if-eqz v3, :cond_14

    iget v7, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v7, :cond_14

    .line 2213
    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 2215
    :cond_14
    invoke-virtual {v6}, Landroid/support/v4/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2209
    .end local v6    # "record":Landroid/support/v4/app/BackStackRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 2217
    .end local v5    # "recordNum":I
    :cond_15
    if-eqz v1, :cond_16

    .line 2218
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->reportBackStackChanged()V

    .line 2220
    :cond_16
    return-void
.end method

.method private findBackStackIndex(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "inclusive"    # Z

    .line 2618
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2619
    return v1

    .line 2621
    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    .line 2622
    if-eqz p3, :cond_1

    .line 2623
    const/4 v0, 0x0

    return v0

    .line 2625
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 2630
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2631
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2632
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    .line 2633
    .local v2, "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2634
    goto :goto_1

    .line 2636
    :cond_3
    if-ltz p2, :cond_4

    iget v3, v2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p2, v3, :cond_4

    .line 2637
    goto :goto_1

    .line 2639
    :cond_4
    nop

    .end local v2    # "bss":Landroid/support/v4/app/BackStackRecord;
    add-int/lit8 v0, v0, -0x1

    .line 2640
    goto :goto_0

    .line 2641
    :cond_5
    :goto_1
    if-gez v0, :cond_6

    .line 2642
    return v0

    .line 2644
    :cond_6
    if-eqz p3, :cond_9

    .line 2646
    :goto_2
    if-lez v0, :cond_b

    .line 2647
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 2648
    .local v1, "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p1, :cond_7

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    if-ltz p2, :cond_b

    iget v2, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p2, v2, :cond_b

    .line 2650
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 2651
    goto :goto_2

    .line 2655
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_a

    .line 2659
    return v1

    .line 2662
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 2664
    :cond_b
    return v0
.end method

.method public static findFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Landroid/view/View;",
            ")TF;"
        }
    .end annotation

    .line 1294
    invoke-static {p0}, Landroid/support/v4/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1295
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 1298
    return-object v0

    .line 1296
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a Fragment set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findFragmentManager(Landroid/view/View;)Landroid/support/v4/app/FragmentManager;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 1361
    invoke-static {p0}, Landroid/support/v4/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1365
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    .line 1366
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    goto :goto_2

    .line 1367
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that owns View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1373
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1374
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1375
    .local v2, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3

    .line 1376
    instance-of v3, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_2

    .line 1377
    move-object v2, v1

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    .line 1378
    goto :goto_1

    .line 1380
    :cond_2
    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 1382
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1383
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    move-object v1, v3

    .line 1390
    .end local v2    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    :goto_2
    return-object v1

    .line 1385
    .local v1, "context":Landroid/content/Context;
    .restart local v2    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not within a subclass of FragmentActivity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static findViewFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 1307
    nop

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1308
    invoke-static {p0}, Landroid/support/v4/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1309
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 1310
    return-object v1

    .line 1312
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1313
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_1
    move-object p0, v0

    .line 1314
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 1315
    :cond_2
    return-object v0
.end method

.method private forcePostponedTransactions()V
    .locals 3

    .line 2310
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->collectAllSpecialEffectsController()Ljava/util/Set;

    move-result-object v0

    .line 2311
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/SpecialEffectsController;

    .line 2312
    .local v2, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController;->forcePostponedExecutePendingOperations()V

    .line 2313
    .end local v2    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    goto :goto_0

    .line 2314
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2352
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2353
    .local v0, "didSomething":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2354
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2355
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    return v1

    .line 2359
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2360
    .local v2, "numActions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2361
    iget-object v4, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentManager$OpGenerator;

    invoke-interface {v4, p1, p2}, Landroid/support/v4/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v0, v4

    .line 2360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2366
    .end local v2    # "numActions":I
    .end local v3    # "i":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2367
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2368
    nop

    .line 2369
    monitor-exit v1

    .line 2370
    return v0

    .line 2366
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2367
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2368
    nop

    .end local v0    # "didSomething":Z
    .end local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .end local p2    # "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    throw v2

    .line 2369
    .restart local v0    # "didSomething":Z
    .restart local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .restart local p2    # "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private getChildNonConfig(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManagerViewModel;
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1414
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerViewModel;->getChildNonConfig(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentContainer(Landroid/support/v4/app/Fragment;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 2285
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    return-object v0

    .line 2289
    :cond_0
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 2290
    return-object v1

    .line 2296
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2297
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mContainer:Landroid/support/v4/app/FragmentContainer;

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2299
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 2300
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 2303
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method static getViewFragment(Landroid/view/View;)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 1324
    sget v0, Landroid/support/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1325
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1326
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/Fragment;

    return-object v1

    .line 1328
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isLoggingEnabled(I)Z
    .locals 1
    .param p0, "level"    # I

    .line 152
    sget-boolean v0, Landroid/support/v4/app/FragmentManager;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

.method private isMenuAvailable(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 3665
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->checkForMenus()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isParentAdded()Z
    .locals 2

    .line 3676
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3677
    return v1

    .line 3679
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 1094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->execPendingActions(Z)Z

    .line 1095
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->ensureExecReady(Z)V

    .line 1097
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 1100
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1101
    .local v1, "childManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    return v0

    .line 1107
    .end local v1    # "childManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "flags":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "id":I
    .local v8, "flags":I
    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    .line 1108
    .local p1, "executePop":Z
    if-eqz p1, :cond_1

    .line 1109
    iput-boolean v0, v3, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 1111
    :try_start_0
    iget-object p2, v3, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p3, v3, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->cleanupExec()V

    .line 1114
    goto :goto_0

    .line 1113
    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->cleanupExec()V

    .line 1114
    throw p2

    .line 1117
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1118
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->doPendingDeferredStart()V

    .line 1119
    iget-object p2, v3, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentStore;->burpActive()V

    .line 1120
    return p1
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2061
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    return-void

    .line 2065
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2069
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2070
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2071
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2072
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2073
    .local v3, "canReorder":Z
    if-nez v3, :cond_3

    .line 2075
    if-eq v1, v2, :cond_1

    .line 2076
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2080
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 2081
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2082
    :goto_1
    if-ge v4, v0, :cond_2

    .line 2083
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2084
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_2

    .line 2085
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2088
    :cond_2
    invoke-direct {p0, p1, p2, v2, v4}, Landroid/support/v4/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2089
    move v1, v4

    .line 2090
    add-int/lit8 v2, v4, -0x1

    .line 2071
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2093
    .end local v2    # "recordNum":I
    :cond_4
    if-eq v1, v0, :cond_5

    .line 2094
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/support/v4/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2096
    :cond_5
    return-void

    .line 2066
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportBackStackChanged()V
    .locals 2

    .line 2381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2382
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2384
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .line 3683
    const/4 v0, 0x0

    .line 3684
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 3698
    :sswitch_0
    const/16 v0, 0x1004

    goto :goto_0

    .line 3689
    :sswitch_1
    const/16 v0, 0x1001

    .line 3690
    goto :goto_0

    .line 3695
    :sswitch_2
    const/16 v0, 0x2005

    .line 3696
    goto :goto_0

    .line 3692
    :sswitch_3
    const/16 v0, 0x1003

    .line 3693
    goto :goto_0

    .line 3686
    :sswitch_4
    const/16 v0, 0x2002

    .line 3687
    nop

    .line 3701
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_4
        0x1003 -> :sswitch_3
        0x1004 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2005 -> :sswitch_0
    .end sparse-switch
.end method

.method private setVisibleRemovingFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 2271
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->getFragmentContainer(Landroid/support/v4/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2272
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 2273
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getExitAnim()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getPopEnterAnim()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getPopExitAnim()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 2275
    sget v1, Landroid/support/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2276
    sget v1, Landroid/support/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2278
    :cond_0
    sget v1, Landroid/support/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2279
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getPopDirection()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setPopDirection(Z)V

    .line 2281
    :cond_1
    return-void
.end method

.method private startPendingDeferredFragments()V
    .locals 2

    .line 1679
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 1680
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->performPendingDeferredStart(Landroid/support/v4/app/FragmentStateManager;)V

    .line 1681
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    goto :goto_0

    .line 1682
    :cond_0
    return-void
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 8
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 705
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Landroid/support/v4/app/LogWriter;

    invoke-direct {v0, v1}, Landroid/support/v4/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, "logw":Landroid/support/v4/app/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 709
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const-string v4, "Failed dumping state"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "  "

    if-eqz v3, :cond_0

    .line 711
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v7, v6, v2, v5}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v3

    .line 713
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 717
    :cond_0
    :try_start_1
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v2, v3}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 720
    goto :goto_1

    .line 718
    :catch_1
    move-exception v3

    .line 719
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    throw p1
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .locals 4

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 785
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v3}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 786
    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FragmentManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    monitor-exit v0

    return-void

    .line 792
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    .line 797
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->isPrimaryNavigation(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 798
    .local v3, "isEnabled":Z
    :goto_0
    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 799
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBackPressedCallback for FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v3}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 805
    return-void

    .line 792
    .end local v3    # "isEnabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord;

    .line 2398
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    return-void
.end method

.method addFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1707
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mPreviousWho:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onFragmentReuse(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 1710
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->createOrGetFragmentStateManager(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v0

    .line 1712
    .local v0, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    iput-object p0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 1713
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentStore;->makeActive(Landroid/support/v4/app/FragmentStateManager;)V

    .line 1714
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    .line 1715
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentStore;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 1716
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1717
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1718
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1720
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->isMenuAvailable(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1721
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1724
    :cond_3
    return-object v0
.end method

.method public addFragmentOnAttachListener(Landroid/support/v4/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentOnAttachListener;

    .line 3614
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3615
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 1148
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    return-void
.end method

.method addRetainedFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1418
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerViewModel;->addRetainedFragment(Landroid/support/v4/app/Fragment;)V

    .line 1419
    return-void
.end method

.method allocBackStackIndex()I
    .locals 1

    .line 1915
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p2, "container"    # Landroid/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback<",
            "*>;",
            "Landroid/support/v4/app/FragmentContainer;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2924
    .local p1, "host":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_f

    .line 2925
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2926
    iput-object p2, p0, Landroid/support/v4/app/FragmentManager;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 2927
    iput-object p3, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    .line 2931
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 2932
    new-instance v0, Landroid/support/v4/app/FragmentManager$7;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/app/FragmentManager$7;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->addFragmentOnAttachListener(Landroid/support/v4/app/FragmentOnAttachListener;)V

    goto :goto_0

    .line 2940
    :cond_0
    instance-of v0, p1, Landroid/support/v4/app/FragmentOnAttachListener;

    if-eqz v0, :cond_1

    .line 2941
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentOnAttachListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->addFragmentOnAttachListener(Landroid/support/v4/app/FragmentOnAttachListener;)V

    .line 2944
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 2948
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 2951
    :cond_2
    instance-of v0, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v0, :cond_4

    .line 2952
    move-object v0, p1

    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 2953
    .local v0, "dispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2954
    if-eqz p3, :cond_3

    move-object v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 2955
    .local v1, "owner":Landroidx/lifecycle/LifecycleOwner;
    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v2, v1, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 2959
    .end local v0    # "dispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    .end local v1    # "owner":Landroidx/lifecycle/LifecycleOwner;
    :cond_4
    if-eqz p3, :cond_5

    .line 2960
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, p3}, Landroid/support/v4/app/FragmentManager;->getChildNonConfig(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    goto :goto_2

    .line 2961
    :cond_5
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_6

    .line 2962
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    .line 2963
    .local v0, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    invoke-static {v0}, Landroid/support/v4/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroid/support/v4/app/FragmentManagerViewModel;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    .line 2964
    .end local v0    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    goto :goto_2

    .line 2965
    :cond_6
    new-instance v0, Landroid/support/v4/app/FragmentManagerViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentManagerViewModel;-><init>(Z)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    .line 2968
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2969
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentStore;->setNonConfig(Landroid/support/v4/app/FragmentManagerViewModel;)V

    .line 2971
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_7

    if-nez p3, :cond_7

    .line 2972
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 2973
    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    .line 2974
    .local v0, "registry":Landroidx/savedstate/SavedStateRegistry;
    new-instance v1, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda0;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 2979
    nop

    .line 2980
    invoke-virtual {v0, v2}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2981
    .local v1, "savedInstanceState":Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 2982
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    .line 2986
    .end local v0    # "registry":Landroidx/savedstate/SavedStateRegistry;
    .end local v1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v0, :cond_9

    .line 2987
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 2988
    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    .line 2990
    .local v0, "registry":Landroidx/activity/result/ActivityResultRegistry;
    if-eqz p3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string v1, ""

    .line 2991
    .local v1, "parentId":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FragmentManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2993
    .local v2, "keyPrefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "StartActivityForResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v5, Landroid/support/v4/app/FragmentManager$8;

    invoke-direct {v5, p0}, Landroid/support/v4/app/FragmentManager$8;-><init>(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 3020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "StartIntentSenderForResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/FragmentManager$FragmentIntentSenderContract;

    invoke-direct {v4}, Landroid/support/v4/app/FragmentManager$FragmentIntentSenderContract;-><init>()V

    new-instance v5, Landroid/support/v4/app/FragmentManager$9;

    invoke-direct {v5, p0}, Landroid/support/v4/app/FragmentManager$9;-><init>(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 3047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "RequestPermissions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v5, Landroid/support/v4/app/FragmentManager$10;

    invoke-direct {v5, p0}, Landroid/support/v4/app/FragmentManager$10;-><init>(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    .line 3082
    .end local v0    # "registry":Landroidx/activity/result/ActivityResultRegistry;
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "keyPrefix":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v0, :cond_a

    .line 3083
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 3085
    .local v0, "onConfigurationChangedProvider":Landroidx/core/content/OnConfigurationChangedProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroidx/core/content/OnConfigurationChangedProvider;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 3089
    .end local v0    # "onConfigurationChangedProvider":Landroidx/core/content/OnConfigurationChangedProvider;
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/content/OnTrimMemoryProvider;

    if-eqz v0, :cond_b

    .line 3090
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 3091
    .local v0, "onTrimMemoryProvider":Landroidx/core/content/OnTrimMemoryProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroidx/core/content/OnTrimMemoryProvider;->addOnTrimMemoryListener(Landroidx/core/util/Consumer;)V

    .line 3094
    .end local v0    # "onTrimMemoryProvider":Landroidx/core/content/OnTrimMemoryProvider;
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;

    if-eqz v0, :cond_c

    .line 3095
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;

    .line 3097
    .local v0, "onMultiWindowModeChangedProvider":Landroid/support/v4/app/OnMultiWindowModeChangedProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;->addOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 3101
    .end local v0    # "onMultiWindowModeChangedProvider":Landroid/support/v4/app/OnMultiWindowModeChangedProvider;
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;

    if-eqz v0, :cond_d

    .line 3102
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;

    .line 3104
    .local v0, "onPictureInPictureModeChangedProvider":Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;->addOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 3108
    .end local v0    # "onPictureInPictureModeChangedProvider":Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/view/MenuHost;

    if-eqz v0, :cond_e

    if-nez p3, :cond_e

    .line 3109
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/core/view/MenuHost;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    invoke-interface {v0, v1}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 3111
    :cond_e
    return-void

    .line 2924
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method attachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1790
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    .line 1792
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1793
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    .line 1794
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentStore;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 1795
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->isMenuAvailable(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1797
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1801
    :cond_2
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .line 748
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-object v0
.end method

.method cancelBackStackTransition()V
    .locals 4

    .line 1054
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelBackStackTransition for transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 1059
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->collapseOps()V

    .line 1060
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    new-instance v2, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/support/v4/app/FragmentManager$$ExternalSyntheticLambda1;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/BackStackRecord;->runOnCommitInternal(ZLjava/lang/Runnable;)Landroid/support/v4/app/FragmentTransaction;

    .line 1065
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->commit()I

    .line 1066
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 1067
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 1068
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 1071
    :cond_1
    return-void
.end method

.method checkForMenus()Z
    .locals 3

    .line 3652
    const/4 v0, 0x0

    .line 3653
    .local v0, "hasMenu":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3654
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 3655
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManager;->isMenuAvailable(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    .line 3657
    :cond_0
    if-eqz v0, :cond_1

    .line 3658
    const/4 v1, 0x1

    return v1

    .line 3660
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3661
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public clearBackStack(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 973
    new-instance v0, Landroid/support/v4/app/FragmentManager$ClearBackStackState;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/FragmentManager$ClearBackStackState;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 974
    return-void
.end method

.method clearBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 8
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2557
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->restoreBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    .line 2558
    .local v0, "restoredBackStackState":Z
    if-nez v0, :cond_0

    .line 2559
    const/4 v1, 0x0

    return v1

    .line 2561
    :cond_0
    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .end local p2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local p3    # "name":Ljava/lang/String;
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local v4, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v5, "name":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final clearFragmentResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestKey"    # Ljava/lang/String;

    .line 1178
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing fragment result with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    return-void
.end method

.method public final clearFragmentResultListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestKey"    # Ljava/lang/String;

    .line 1230
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;

    .line 1231
    .local v0, "listener":Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    .line 1234
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing FragmentResultListener for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_1
    return-void
.end method

.method collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 8
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;II)",
            "Ljava/util/Set<",
            "Landroid/support/v4/app/SpecialEffectsController;",
            ">;"
        }
    .end annotation

    .line 2224
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2225
    .local v0, "controllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 2226
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/BackStackRecord;

    .line 2227
    .local v2, "record":Landroid/support/v4/app/BackStackRecord;
    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2228
    .local v4, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v5, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 2229
    .local v5, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_0

    .line 2230
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2231
    .local v6, "container":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 2232
    invoke-static {v6, p0}, Landroid/support/v4/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2236
    .end local v4    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v5    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v6    # "container":Landroid/view/ViewGroup;
    :cond_0
    goto :goto_1

    .line 2225
    .end local v2    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2238
    .end local v1    # "index":I
    :cond_2
    return-object v0
.end method

.method createOrGetFragmentStateManager(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1693
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v0

    .line 1694
    .local v0, "existing":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v0, :cond_0

    .line 1695
    return-object v0

    .line 1697
    :cond_0
    new-instance v1, Landroid/support/v4/app/FragmentStateManager;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-direct {v1, v2, v3, p1}, Landroid/support/v4/app/FragmentStateManager;-><init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Landroid/support/v4/app/Fragment;)V

    .line 1700
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 1702
    iget v2, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 1703
    return-object v1
.end method

.method detachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1774
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    .line 1776
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1777
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_3

    .line 1779
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentStore;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 1781
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->isMenuAvailable(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1782
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1784
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->setVisibleRemovingFragment(Landroid/support/v4/app/Fragment;)V

    .line 1787
    :cond_3
    return-void
.end method

.method dispatchActivityCreated()V
    .locals 2

    .line 3208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 3209
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3210
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3211
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3212
    return-void
.end method

.method dispatchAttach()V
    .locals 2

    .line 3190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 3191
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3192
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3193
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3194
    return-void
.end method

.method dispatchConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "recursive"    # Z

    .line 3342
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v0, :cond_0

    .line 3343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 3347
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3348
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3349
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3350
    if-eqz p2, :cond_1

    .line 3351
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;Z)V

    .line 3354
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3355
    :cond_2
    return-void
.end method

.method dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3436
    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3437
    return v1

    .line 3439
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3440
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 3441
    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3442
    return v2

    .line 3445
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3446
    :cond_2
    return v1
.end method

.method dispatchCreate()V
    .locals 2

    .line 3197
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 3198
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3199
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3201
    return-void
.end method

.method dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3375
    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3376
    const/4 v0, 0x0

    return v0

    .line 3378
    :cond_0
    const/4 v0, 0x0

    .line 3379
    .local v0, "show":Z
    const/4 v1, 0x0

    .line 3380
    .local v1, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3381
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_2

    .line 3382
    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentManager;->isParentMenuVisible(Landroid/support/v4/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3383
    const/4 v0, 0x1

    .line 3384
    if-nez v1, :cond_1

    .line 3385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 3387
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3390
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    goto :goto_0

    .line 3392
    :cond_3
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 3393
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3394
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3395
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3396
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 3393
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3401
    .end local v2    # "i":I
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3403
    return v0
.end method

.method dispatchDestroy()V
    .locals 2

    .line 3243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mDestroyed:Z

    .line 3244
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->execPendingActions(Z)Z

    .line 3245
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 3246
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->clearBackStackStateViewModels()V

    .line 3247
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3248
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/content/OnTrimMemoryProvider;

    if-eqz v0, :cond_0

    .line 3249
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/core/content/OnTrimMemoryProvider;

    .line 3250
    .local v0, "onTrimMemoryProvider":Landroidx/core/content/OnTrimMemoryProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnTrimMemoryListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroidx/core/content/OnTrimMemoryProvider;->removeOnTrimMemoryListener(Landroidx/core/util/Consumer;)V

    .line 3252
    .end local v0    # "onTrimMemoryProvider":Landroidx/core/content/OnTrimMemoryProvider;
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v0, :cond_1

    .line 3253
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/core/content/OnConfigurationChangedProvider;

    .line 3255
    .local v0, "onConfigurationChangedProvider":Landroidx/core/content/OnConfigurationChangedProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnConfigurationChangedListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroidx/core/content/OnConfigurationChangedProvider;->removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    .line 3258
    .end local v0    # "onConfigurationChangedProvider":Landroidx/core/content/OnConfigurationChangedProvider;
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;

    if-eqz v0, :cond_2

    .line 3259
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;

    .line 3261
    .local v0, "onMultiWindowModeChangedProvider":Landroid/support/v4/app/OnMultiWindowModeChangedProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnMultiWindowModeChangedListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;->removeOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 3264
    .end local v0    # "onMultiWindowModeChangedProvider":Landroid/support/v4/app/OnMultiWindowModeChangedProvider;
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;

    if-eqz v0, :cond_3

    .line 3265
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;

    .line 3267
    .local v0, "onPictureInPictureModeChangedProvider":Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnPictureInPictureModeChangedListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;->removeOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V

    .line 3270
    .end local v0    # "onPictureInPictureModeChangedProvider":Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/view/MenuHost;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_4

    .line 3271
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    check-cast v0, Landroidx/core/view/MenuHost;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mMenuProvider:Landroidx/core/view/MenuProvider;

    invoke-interface {v0, v1}, Landroidx/core/view/MenuHost;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 3273
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 3274
    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 3275
    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    .line 3276
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_5

    .line 3279
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 3280
    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 3282
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_6

    .line 3283
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3284
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3285
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 3287
    :cond_6
    return-void
.end method

.method dispatchDestroyView()V
    .locals 1

    .line 3239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3240
    return-void
.end method

.method dispatchLowMemory(Z)V
    .locals 4
    .param p1, "recursive"    # Z

    .line 3358
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/core/content/OnTrimMemoryProvider;

    if-eqz v0, :cond_0

    .line 3359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 3363
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3364
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3365
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 3366
    if-eqz p1, :cond_1

    .line 3367
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->dispatchLowMemory(Z)V

    .line 3370
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3371
    :cond_2
    return-void
.end method

.method dispatchMultiWindowModeChanged(ZZ)V
    .locals 4
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "recursive"    # Z

    .line 3305
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroid/support/v4/app/OnMultiWindowModeChangedProvider;

    if-eqz v0, :cond_0

    .line 3306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 3310
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3311
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3312
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3313
    if-eqz p2, :cond_1

    .line 3314
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    .line 3319
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3320
    :cond_2
    return-void
.end method

.method dispatchOnAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 3624
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentOnAttachListener;

    .line 3625
    .local v1, "listener":Landroid/support/v4/app/FragmentOnAttachListener;
    invoke-interface {v1, p0, p1}, Landroid/support/v4/app/FragmentOnAttachListener;->onAttachFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 3626
    .end local v1    # "listener":Landroid/support/v4/app/FragmentOnAttachListener;
    goto :goto_0

    .line 3627
    :cond_0
    return-void
.end method

.method dispatchOnHiddenChanged()V
    .locals 3

    .line 3641
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3642
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3643
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 3644
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->dispatchOnHiddenChanged()V

    .line 3646
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 3647
    :cond_1
    return-void
.end method

.method dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3422
    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 3423
    return v1

    .line 3425
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3426
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 3427
    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3428
    return v2

    .line 3431
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3432
    :cond_2
    return v1
.end method

.method dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3450
    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3451
    return-void

    .line 3453
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3454
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3455
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3457
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3458
    :cond_2
    return-void
.end method

.method dispatchPause()V
    .locals 1

    .line 3229
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3230
    return-void
.end method

.method dispatchPictureInPictureModeChanged(ZZ)V
    .locals 4
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "recursive"    # Z

    .line 3323
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroid/support/v4/app/OnPictureInPictureModeChangedProvider;

    if-eqz v0, :cond_0

    .line 3324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 3329
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3330
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3331
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3332
    if-eqz p2, :cond_1

    .line 3333
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    .line 3338
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3339
    :cond_2
    return-void
.end method

.method dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3407
    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3408
    const/4 v0, 0x0

    return v0

    .line 3410
    :cond_0
    const/4 v0, 0x0

    .line 3411
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3412
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 3413
    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->isParentMenuVisible(Landroid/support/v4/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3414
    const/4 v0, 0x1

    .line 3417
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3418
    :cond_2
    return v0
.end method

.method dispatchPrimaryNavigationFragmentChanged()V
    .locals 1

    .line 3479
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 3481
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroid/support/v4/app/Fragment;)V

    .line 3482
    return-void
.end method

.method dispatchResume()V
    .locals 2

    .line 3222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 3223
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3224
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3225
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3226
    return-void
.end method

.method dispatchStart()V
    .locals 2

    .line 3215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 3216
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3217
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3218
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3219
    return-void
.end method

.method dispatchStop()V
    .locals 2

    .line 3233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3234
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3235
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3236
    return-void
.end method

.method dispatchViewCreated()V
    .locals 1

    .line 3204
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchStateChange(I)V

    .line 3205
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentStore;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1543
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1544
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1545
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 1546
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Fragments Created Menus:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1548
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1549
    .local v3, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1552
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1558
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1559
    .restart local v1    # "count":I
    if-lez v1, :cond_1

    .line 1560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1562
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    .line 1563
    .local v3, "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1566
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v3}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v3, v0, p3}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1561
    .end local v3    # "bs":Landroid/support/v4/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1572
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Back Stack Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1576
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 1577
    if-lez v1, :cond_2

    .line 1578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1580
    iget-object v4, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentManager$OpGenerator;

    .line 1581
    .local v4, "r":Landroid/support/v4/app/FragmentManager$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1582
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1584
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1579
    .end local v4    # "r":Landroid/support/v4/app/FragmentManager$OpGenerator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1588
    .end local v3    # "i":I
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1591
    const-string v2, "FragmentManager misc state:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    const-string v2, "  mHost="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1594
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1595
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    const-string v2, "  mContainer="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1598
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_3

    .line 1599
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1600
    const-string v2, "  mParent="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1603
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1604
    const-string v2, "  mCurState="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1605
    iget v2, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1606
    const-string v2, " mStateSaved="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1607
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1608
    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1609
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1610
    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1611
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManager;->mDestroyed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1612
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_4

    .line 1613
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    const-string v2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1615
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1617
    :cond_4
    return-void

    .line 1588
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V
    .locals 3
    .param p1, "action"    # Landroid/support/v4/app/FragmentManager$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1872
    if-nez p2, :cond_2

    .line 1873
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1874
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1877
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1881
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->checkStateLoss()V

    .line 1883
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1884
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_4

    .line 1885
    if-eqz p2, :cond_3

    .line 1887
    monitor-exit v0

    return-void

    .line 1889
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity has been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "action":Landroid/support/v4/app/FragmentManager$OpGenerator;
    .end local p2    # "allowStateLoss":Z
    throw v1

    .line 1891
    .restart local p1    # "action":Landroid/support/v4/app/FragmentManager$OpGenerator;
    .restart local p2    # "allowStateLoss":Z
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->scheduleCommit()V

    .line 1893
    monitor-exit v0

    .line 1894
    return-void

    .line 1893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method execPendingActions(Z)Z
    .locals 5
    .param p1, "allowStateLoss"    # Z

    .line 2006
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->ensureExecReady(Z)V

    .line 2008
    const/4 v0, 0x0

    .line 2012
    .local v0, "didSomething":Z
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mHandlingTransitioningOp:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-eqz v1, :cond_3

    .line 2013
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 2014
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->collapseOps()V

    .line 2015
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reversing mTransitioningOp "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as part of execPendingActions for actions "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/app/BackStackRecord;->commitInternal(ZZ)I

    .line 2020
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2021
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2022
    .local v3, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_1

    .line 2023
    iget-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    .line 2025
    .end local v3    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_1
    goto :goto_0

    .line 2026
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 2028
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentManager;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2029
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 2031
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->cleanupExec()V

    .line 2034
    nop

    .line 2035
    const/4 v0, 0x1

    goto :goto_1

    .line 2033
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->cleanupExec()V

    .line 2034
    throw v1

    .line 2038
    :cond_4
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 2039
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->doPendingDeferredStart()V

    .line 2040
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->burpActive()V

    .line 2042
    return v0
.end method

.method execSingleAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V
    .locals 5
    .param p1, "action"    # Landroid/support/v4/app/FragmentManager$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1952
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1954
    :cond_0
    return-void

    .line 1956
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentManager;->ensureExecReady(Z)V

    .line 1957
    const/4 v0, 0x0

    .line 1961
    .local v0, "generateOpsResult":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-eqz v1, :cond_5

    .line 1962
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 1963
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->collapseOps()V

    .line 1964
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reversing mTransitioningOp "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as part of execSingleAction for action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/app/BackStackRecord;->commitInternal(ZZ)I

    .line 1969
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/BackStackRecord;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 1970
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 1971
    .local v3, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_3

    .line 1972
    iget-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    .line 1974
    .end local v3    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_3
    goto :goto_0

    .line 1975
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 1977
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v1, v2}, Landroid/support/v4/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    .line 1978
    .local v1, "actionOpsResult":Z
    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    .line 1979
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    .line 1981
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->cleanupExec()V

    .line 1984
    nop

    .line 1987
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1988
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->doPendingDeferredStart()V

    .line 1989
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStore;->burpActive()V

    .line 1990
    return-void

    .line 1983
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->cleanupExec()V

    .line 1984
    throw v2
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 774
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->execPendingActions(Z)Z

    move-result v0

    .line 775
    .local v0, "updates":Z
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->forcePostponedTransactions()V

    .line 776
    return v0
.end method

.method findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 1836
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "id"    # I

    .line 1812
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentStore;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 1828
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentStore;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 1832
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method fragmentsFromRecord(Landroid/support/v4/app/BackStackRecord;)Ljava/util/Set;
    .locals 4
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            ")",
            "Ljava/util/Set<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 2387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2388
    .local v0, "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2389
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTransaction$Op;

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 2390
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    iget-boolean v3, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_0

    .line 2391
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2388
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2394
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method getActiveFragmentCount()I
    .locals 1

    .line 1441
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1432
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .line 1135
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1136
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    return-object v0

    .line 1137
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1141
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 2

    .line 1127
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method getContainer()Landroid/support/v4/app/FragmentContainer;
    .locals 1

    .line 2914
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mContainer:Landroid/support/v4/app/FragmentContainer;

    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 1268
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, "who":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1270
    const/4 v1, 0x0

    return-object v1

    .line 1272
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1273
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 1274
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unique id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 1277
    :cond_1
    return-object v1
.end method

.method public getFragmentFactory()Landroid/support/v4/app/FragmentFactory;
    .locals 1

    .line 3533
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    if-eqz v0, :cond_0

    .line 3534
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    return-object v0

    .line 3536
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 3541
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v0

    return-object v0

    .line 3543
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHostFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    return-object v0
.end method

.method getFragmentStore()Landroid/support/v4/app/FragmentStore;
    .locals 1

    .line 2918
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Landroid/support/v4/app/FragmentHostCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation

    .line 2906
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .line 3706
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mLayoutInflaterFactory:Landroid/support/v4/app/FragmentLayoutInflaterFactory;

    return-object v0
.end method

.method getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;
    .locals 1

    .line 3579
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    return-object v0
.end method

.method getParent()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 2910
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 3497
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method getSpecialEffectsControllerFactory()Landroid/support/v4/app/SpecialEffectsControllerFactory;
    .locals 1

    .line 3565
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

    return-object v0

    .line 3568
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 3573
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroid/support/v4/app/SpecialEffectsControllerFactory;

    move-result-object v0

    return-object v0

    .line 3575
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mDefaultSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

    return-object v0
.end method

.method public getStrictModePolicy()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 1

    .line 3711
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    return-object v0
.end method

.method getViewModelStore(Landroid/support/v4/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1410
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerViewModel;->getViewModelStore(Landroid/support/v4/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method handleOnBackPressed()V
    .locals 9

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 859
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->execPendingActions(Z)Z

    .line 860
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mHandlingTransitioningOp:Z

    .line 861
    sget-boolean v2, Landroid/support/v4/app/FragmentManager;->USE_PREDICTIVE_BACK:Z

    const/4 v3, 0x3

    const-string v4, "FragmentManager"

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    if-eqz v2, :cond_8

    .line 862
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 864
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 865
    invoke-virtual {p0, v5}, Landroid/support/v4/app/FragmentManager;->fragmentsFromRecord(Landroid/support/v4/app/BackStackRecord;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 867
    .local v2, "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 869
    .local v6, "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 870
    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v6, v8, v0}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChangeCommitted(Landroid/support/v4/app/Fragment;Z)V

    .line 871
    .end local v8    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 872
    .end local v6    # "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    :cond_0
    goto :goto_0

    .line 874
    .end local v2    # "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 875
    .local v5, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v6, v5, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 876
    .local v6, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_2

    .line 877
    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    .line 879
    .end local v5    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v6    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    goto :goto_2

    .line 880
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 881
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 880
    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/app/FragmentManager;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v0

    .line 883
    .local v0, "changedControllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/SpecialEffectsController;

    .line 884
    .local v2, "controller":Landroid/support/v4/app/SpecialEffectsController;
    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController;->completeBack()V

    .line 885
    .end local v2    # "controller":Landroid/support/v4/app/SpecialEffectsController;
    goto :goto_3

    .line 886
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 887
    .local v2, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 888
    .local v5, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v5, :cond_5

    .line 889
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v6, :cond_5

    .line 890
    nop

    .line 891
    invoke-virtual {p0, v5}, Landroid/support/v4/app/FragmentManager;->createOrGetFragmentStateManager(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v6

    .line 892
    .local v6, "stateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 895
    .end local v2    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v5    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v6    # "stateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_5
    goto :goto_4

    .line 896
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 897
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 898
    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 899
    const-string v1, "Op is being set to null"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBackPressedCallback enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v2}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for  FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v0    # "changedControllers":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/SpecialEffectsController;>;"
    :cond_7
    goto :goto_5

    .line 904
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 905
    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 906
    const-string v0, "Calling popBackStackImmediate via onBackPressed callback"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_5

    .line 911
    :cond_a
    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 912
    const-string v0, "Calling onBackPressed via onBackPressed callback"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 923
    :goto_5
    return-void
.end method

.method hideFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1748
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1750
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1753
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1754
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->setVisibleRemovingFragment(Landroid/support/v4/app/Fragment;)V

    .line 1756
    :cond_1
    return-void
.end method

.method invalidateMenuForFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 3669
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->isMenuAvailable(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3670
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 3672
    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1500
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mDestroyed:Z

    return v0
.end method

.method isParentHidden(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v4/app/Fragment;

    .line 845
    if-nez p1, :cond_0

    .line 846
    const/4 v0, 0x0

    return v0

    .line 849
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    return v0
.end method

.method isParentMenuVisible(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v4/app/Fragment;

    .line 833
    if-nez p1, :cond_0

    .line 834
    const/4 v0, 0x1

    return v0

    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isMenuVisible()Z

    move-result v0

    return v0
.end method

.method isPrimaryNavigation(Landroid/support/v4/app/Fragment;)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v4/app/Fragment;

    .line 815
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 816
    return v0

    .line 818
    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 819
    .local v1, "parentFragmentManager":Landroid/support/v4/app/FragmentManager;
    nop

    .line 820
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 824
    .local v2, "primaryNavigationFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    .line 825
    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentManager;->isPrimaryNavigation(Landroid/support/v4/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 824
    :goto_0
    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1633
    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    .line 1861
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

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

.method synthetic lambda$attachController$5$android-support-v4-app-FragmentManager()Landroid/os/Bundle;
    .locals 1

    .line 2975
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$cancelBackStackTransition$4$android-support-v4-app-FragmentManager()V
    .locals 2

    .line 1061
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 1062
    .local v1, "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChangeCancelled()V

    .line 1063
    .end local v1    # "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    goto :goto_0

    .line 1064
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$android-support-v4-app-FragmentManager(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 604
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;Z)V

    .line 607
    :cond_0
    return-void
.end method

.method synthetic lambda$new$1$android-support-v4-app-FragmentManager(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "level"    # Ljava/lang/Integer;

    .line 609
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchLowMemory(Z)V

    .line 612
    :cond_0
    return-void
.end method

.method synthetic lambda$new$2$android-support-v4-app-FragmentManager(Landroid/support/v4/app/MultiWindowModeChangedInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/support/v4/app/MultiWindowModeChangedInfo;

    .line 615
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p1}, Landroid/support/v4/app/MultiWindowModeChangedInfo;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    .line 618
    :cond_0
    return-void
.end method

.method synthetic lambda$new$3$android-support-v4-app-FragmentManager(Landroid/support/v4/app/PictureInPictureModeChangedInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/support/v4/app/PictureInPictureModeChangedInfo;

    .line 621
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p1}, Landroid/support/v4/app/PictureInPictureModeChangedInfo;->isInPictureInPictureMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    .line 624
    :cond_0
    return-void
.end method

.method launchRequestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 3180
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    .line 3181
    new-instance v0, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 3182
    .local v0, "info":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 3183
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mRequestPermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 3184
    .end local v0    # "info":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    goto :goto_0

    .line 3185
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 3187
    :goto_0
    return-void
.end method

.method launchStartActivityForResult(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 3133
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 3134
    new-instance v0, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 3135
    .local v0, "info":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 3136
    if-eqz p4, :cond_0

    .line 3137
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3139
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mStartActivityForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 3140
    .end local v0    # "info":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    goto :goto_0

    .line 3141
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 3143
    :goto_0
    return-void
.end method

.method launchStartIntentSenderForResult(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 3150
    move-object/from16 v8, p8

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_4

    .line 3151
    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    if-eqz v8, :cond_2

    .line 3152
    if-nez p4, :cond_0

    .line 3153
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3154
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .local v2, "fillInIntent":Landroid/content/Intent;
    const-string v3, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 3152
    .end local v2    # "fillInIntent":Landroid/content/Intent;
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    move-object v2, p4

    .line 3156
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local v2    # "fillInIntent":Landroid/content/Intent;
    :goto_0
    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityOptions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " were added to fillInIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    :cond_1
    const-string v3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 3151
    .end local v2    # "fillInIntent":Landroid/content/Intent;
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    :cond_2
    move-object v2, p4

    .line 3162
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local v2    # "fillInIntent":Landroid/content/Intent;
    :goto_1
    new-instance v3, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v3, p2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    .line 3163
    invoke-virtual {v3, v2}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFillInIntent(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v3

    .line 3164
    invoke-virtual {v3, p6, p5}, Landroidx/activity/result/IntentSenderRequest$Builder;->setFlags(II)Landroidx/activity/result/IntentSenderRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v3

    .line 3165
    .local v3, "request":Landroidx/activity/result/IntentSenderRequest;
    new-instance v4, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v7, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v4, v7, p3}, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    .line 3166
    .local v4, "info":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    iget-object v7, p0, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 3167
    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "is launching an IntentSender for result "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mStartIntentSenderForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 3171
    .end local v3    # "request":Landroidx/activity/result/IntentSenderRequest;
    .end local v4    # "info":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    goto :goto_2

    .line 3172
    .end local v2    # "fillInIntent":Landroid/content/Intent;
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    move-object v2, p4

    .line 3175
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local v2    # "fillInIntent":Landroid/content/Intent;
    :goto_2
    return-void
.end method

.method moveToState(IZ)V
    .locals 2
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1659
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1660
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    if-ne p1, v0, :cond_2

    .line 1664
    return-void

    .line 1667
    :cond_2
    iput p1, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    .line 1668
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->moveToExpectedState()V

    .line 1669
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->startPendingDeferredFragments()V

    .line 1671
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 1672
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1675
    :cond_3
    return-void
.end method

.method noteStateNotSaved()V
    .locals 2

    .line 3117
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 3118
    return-void

    .line 3120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 3121
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManager;->mStopped:Z

    .line 3122
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 3123
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3124
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 3125
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->noteStateNotSaved()V

    .line 3127
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 3128
    :cond_2
    return-void
.end method

.method public final onContainerAvailable(Landroid/support/v4/app/FragmentContainerView;)V
    .locals 5
    .param p1, "container"    # Landroid/support/v4/app/FragmentContainerView;

    .line 1339
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 1340
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1341
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentContainerView;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1342
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1344
    iput-object p1, v2, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1345
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->addViewToContainer()V

    .line 1346
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 1348
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 1349
    :cond_1
    return-void
.end method

.method public openTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method performPendingDeferredStart(Landroid/support/v4/app/FragmentStateManager;)V
    .locals 2
    .param p1, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    .line 1620
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1621
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_1

    .line 1622
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mExecutingActions:Z

    if-eqz v1, :cond_0

    .line 1624
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 1625
    return-void

    .line 1627
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1628
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 1630
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 4

    .line 982
    new-instance v0, Landroid/support/v4/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v4/app/FragmentManager$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 983
    return-void
.end method

.method public popBackStack(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 1039
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/FragmentManager;->popBackStack(IIZ)V

    .line 1040
    return-void
.end method

.method popBackStack(IIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "allowStateLoss"    # Z

    .line 1043
    if-ltz p1, :cond_0

    .line 1046
    new-instance v0, Landroid/support/v4/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/FragmentManager$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, p3}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 1047
    return-void

    .line 1044
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1010
    new-instance v0, Landroid/support/v4/app/FragmentManager$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/support/v4/app/FragmentManager$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 1011
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .line 993
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 1080
    if-ltz p1, :cond_0

    .line 1083
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 1081
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1021
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 4
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2567
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p3, p4, v0}, Landroid/support/v4/app/FragmentManager;->findBackStackIndex(Ljava/lang/String;IZ)I

    move-result v0

    .line 2568
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 2569
    return v1

    .line 2571
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 2572
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2575
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method prepareBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2580
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    .line 2581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentManager has the following pending actions inside of prepareBackStackState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2587
    const-string v0, "Ignoring call to start back stack pop because the back stack is empty."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    const/4 v0, 0x0

    return v0

    .line 2591
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    iput-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    .line 2593
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mTransitioningOp:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2594
    .local v1, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v3, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_2

    .line 2595
    iget-object v3, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iput-boolean v2, v3, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    .line 2597
    .end local v1    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_2
    goto :goto_0

    .line 2598
    :cond_3
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .end local p2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local v6, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method prepareBackStackTransition()V
    .locals 2

    .line 1050
    new-instance v0, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 1051
    return-void
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1251
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eq v0, p0, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 1255
    :cond_0
    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 1
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 3592
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 3593
    return-void
.end method

.method removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1728
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1732
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1733
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentStore;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 1734
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->isMenuAvailable(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1735
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1737
    :cond_2
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1738
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->setVisibleRemovingFragment(Landroid/support/v4/app/Fragment;)V

    .line 1740
    :cond_3
    return-void
.end method

.method public removeFragmentOnAttachListener(Landroid/support/v4/app/FragmentOnAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentOnAttachListener;

    .line 3637
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3638
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 1156
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1157
    return-void
.end method

.method removeRetainedFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 1422
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerViewModel;->removeRetainedFragment(Landroid/support/v4/app/Fragment;)V

    .line 1423
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2755
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 2756
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2759
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 2760
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    .line 2761
    return-void
.end method

.method public restoreBackStack(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 939
    new-instance v0, Landroid/support/v4/app/FragmentManager$RestoreBackStackState;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/FragmentManager$RestoreBackStackState;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 940
    return-void
.end method

.method restoreBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 9
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2403
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackState;

    .line 2404
    .local v0, "backStackState":Landroid/support/v4/app/BackStackState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2405
    return v1

    .line 2408
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2409
    .local v2, "pendingSavedFragments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/BackStackRecord;

    .line 2410
    .local v4, "record":Landroid/support/v4/app/BackStackRecord;
    iget-boolean v5, v4, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    if-eqz v5, :cond_2

    .line 2411
    iget-object v5, v4, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2412
    .local v6, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v7, v6, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_1

    .line 2413
    iget-object v7, v6, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v8, v6, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    .end local v6    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_1
    goto :goto_1

    .line 2417
    .end local v4    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_2
    goto :goto_0

    .line 2418
    :cond_3
    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManager;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 2420
    .local v3, "backStackRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/BackStackRecord;>;"
    const/4 v4, 0x0

    .line 2421
    .local v4, "added":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/BackStackRecord;

    .line 2422
    .local v6, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v6, p1, p2}, Landroid/support/v4/app/BackStackRecord;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :goto_4
    move v4, v7

    .line 2423
    .end local v6    # "record":Landroid/support/v4/app/BackStackRecord;
    goto :goto_2

    .line 2424
    :cond_6
    return v4
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2764
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_0

    .line 2765
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use restoreSaveState when your FragmentHostCallback implements SavedStateRegistryOwner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2768
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->restoreSaveStateInternal(Landroid/os/Parcelable;)V

    .line 2769
    return-void
.end method

.method restoreSaveStateInternal(Landroid/os/Parcelable;)V
    .locals 19
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2774
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 2775
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 2778
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2779
    .local v3, "bundleKey":Ljava/lang/String;
    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2780
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 2781
    .local v5, "savedResult":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 2782
    iget-object v6, v0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2783
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2784
    .local v4, "resultKey":Ljava/lang/String;
    iget-object v6, v0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    .end local v3    # "bundleKey":Ljava/lang/String;
    .end local v4    # "resultKey":Ljava/lang/String;
    .end local v5    # "savedResult":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 2790
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2791
    .local v2, "allStateBundles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2792
    .local v4, "bundleKey":Ljava/lang/String;
    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2793
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 2794
    .local v6, "savedFragmentBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    .line 2795
    iget-object v7, v0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2796
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2797
    .local v5, "fragmentKey":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2800
    .end local v4    # "bundleKey":Ljava/lang/String;
    .end local v5    # "fragmentKey":Ljava/lang/String;
    .end local v6    # "savedFragmentBundle":Landroid/os/Bundle;
    :cond_3
    goto :goto_1

    .line 2801
    :cond_4
    iget-object v3, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentStore;->restoreSaveState(Ljava/util/HashMap;)V

    .line 2803
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentManagerState;

    .line 2804
    .local v4, "fms":Landroid/support/v4/app/FragmentManagerState;
    if-nez v4, :cond_5

    return-void

    .line 2808
    :cond_5
    iget-object v5, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentStore;->resetActiveFragments()V

    .line 2809
    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "): "

    const/4 v8, 0x2

    const-string v9, "FragmentManager"

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2811
    .local v6, "who":Ljava/lang/String;
    iget-object v10, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2812
    .local v10, "stateBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_9

    .line 2814
    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/FragmentState;

    .line 2816
    .local v11, "fs":Landroid/support/v4/app/FragmentState;
    iget-object v12, v0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    iget-object v13, v11, Landroid/support/v4/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/support/v4/app/FragmentManagerViewModel;->findRetainedFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 2817
    .local v12, "retainedFragment":Landroid/support/v4/app/Fragment;
    if-eqz v12, :cond_7

    .line 2818
    invoke-static {v8}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2819
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restoreSaveState: re-attaching retained "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_6
    new-instance v13, Landroid/support/v4/app/FragmentStateManager;

    iget-object v14, v0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v15, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-direct {v13, v14, v15, v12, v10}, Landroid/support/v4/app/FragmentStateManager;-><init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    move-object v8, v12

    const/16 v18, 0x2

    .local v13, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    goto :goto_3

    .line 2825
    .end local v13    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_7
    move-object v13, v12

    .end local v12    # "retainedFragment":Landroid/support/v4/app/Fragment;
    .local v13, "retainedFragment":Landroid/support/v4/app/Fragment;
    new-instance v12, Landroid/support/v4/app/FragmentStateManager;

    move-object v14, v13

    .end local v13    # "retainedFragment":Landroid/support/v4/app/Fragment;
    .local v14, "retainedFragment":Landroid/support/v4/app/Fragment;
    iget-object v13, v0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-object v15, v14

    .end local v14    # "retainedFragment":Landroid/support/v4/app/Fragment;
    .local v15, "retainedFragment":Landroid/support/v4/app/Fragment;
    iget-object v14, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    const/16 v18, 0x2

    iget-object v8, v0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2826
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 2827
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v16

    move-object/from16 v17, v15

    move-object v15, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v10

    .end local v10    # "stateBundle":Landroid/os/Bundle;
    .end local v15    # "retainedFragment":Landroid/support/v4/app/Fragment;
    .local v8, "retainedFragment":Landroid/support/v4/app/Fragment;
    .local v17, "stateBundle":Landroid/os/Bundle;
    invoke-direct/range {v12 .. v17}, Landroid/support/v4/app/FragmentStateManager;-><init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Ljava/lang/ClassLoader;Landroid/support/v4/app/FragmentFactory;Landroid/os/Bundle;)V

    .end local v17    # "stateBundle":Landroid/os/Bundle;
    .restart local v10    # "stateBundle":Landroid/os/Bundle;
    move-object v13, v12

    .line 2829
    .local v13, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :goto_3
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 2830
    .local v12, "f":Landroid/support/v4/app/Fragment;
    iput-object v10, v12, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2831
    iput-object v0, v12, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 2832
    invoke-static/range {v18 .. v18}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2833
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restoreSaveState: active ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    :cond_8
    iget-object v7, v0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/support/v4/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 2836
    iget-object v7, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v7, v13}, Landroid/support/v4/app/FragmentStore;->makeActive(Landroid/support/v4/app/FragmentStateManager;)V

    .line 2840
    iget v7, v0, Landroid/support/v4/app/FragmentManager;->mCurState:I

    invoke-virtual {v13, v7}, Landroid/support/v4/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 2842
    .end local v6    # "who":Ljava/lang/String;
    .end local v8    # "retainedFragment":Landroid/support/v4/app/Fragment;
    .end local v10    # "stateBundle":Landroid/os/Bundle;
    .end local v11    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v12    # "f":Landroid/support/v4/app/Fragment;
    .end local v13    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_9
    goto/16 :goto_2

    .line 2846
    :cond_a
    const/16 v18, 0x2

    iget-object v3, v0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    .line 2847
    .local v5, "f":Landroid/support/v4/app/Fragment;
    iget-object v6, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v8, v5, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2848
    invoke-static/range {v18 .. v18}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2849
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discarding retained Fragment "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " that was not found in the set of active Fragments "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Landroid/support/v4/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_b
    iget-object v6, v0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/FragmentManagerViewModel;->removeRetainedFragment(Landroid/support/v4/app/Fragment;)V

    .line 2856
    iput-object v0, v5, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 2857
    new-instance v6, Landroid/support/v4/app/FragmentStateManager;

    iget-object v8, v0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v10, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-direct {v6, v8, v10, v5}, Landroid/support/v4/app/FragmentStateManager;-><init>(Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;Landroid/support/v4/app/FragmentStore;Landroid/support/v4/app/Fragment;)V

    .line 2859
    .local v6, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 2860
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 2861
    iput-boolean v8, v5, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 2862
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 2864
    .end local v5    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_c
    goto :goto_4

    .line 2867
    :cond_d
    iget-object v3, v0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentStore;->restoreAddedFragments(Ljava/util/List;)V

    .line 2870
    iget-object v3, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackRecordState;

    if-eqz v3, :cond_10

    .line 2871
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackRecordState;

    array-length v5, v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2872
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackRecordState;

    array-length v5, v5

    if-ge v3, v5, :cond_f

    .line 2873
    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackRecordState;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Landroid/support/v4/app/BackStackRecordState;->instantiate(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v5

    .line 2874
    .local v5, "bse":Landroid/support/v4/app/BackStackRecord;
    invoke-static/range {v18 .. v18}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreAllState: back stack #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (index "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    new-instance v6, Landroid/support/v4/app/LogWriter;

    invoke-direct {v6, v9}, Landroid/support/v4/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2878
    .local v6, "logw":Landroid/support/v4/app/LogWriter;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2879
    .local v8, "pw":Ljava/io/PrintWriter;
    const-string v10, "  "

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v8, v11}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2880
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 2882
    .end local v6    # "logw":Landroid/support/v4/app/LogWriter;
    .end local v8    # "pw":Ljava/io/PrintWriter;
    :cond_e
    iget-object v6, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    .end local v5    # "bse":Landroid/support/v4/app/BackStackRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3    # "i":I
    :cond_f
    goto :goto_6

    .line 2885
    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2887
    :goto_6
    iget-object v3, v0, Landroid/support/v4/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStackIndex:I

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2889
    iget-object v3, v4, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 2890
    iget-object v3, v4, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 2891
    iget-object v3, v0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v3}, Landroid/support/v4/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroid/support/v4/app/Fragment;)V

    .line 2894
    :cond_11
    iget-object v3, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    .line 2895
    .local v3, "savedBackStackStateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_12

    .line 2896
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 2897
    iget-object v6, v0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/BackStackState;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2901
    .end local v5    # "i":I
    :cond_12
    new-instance v5, Ljava/util/ArrayDeque;

    iget-object v6, v4, Landroid/support/v4/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    .line 2902
    return-void
.end method

.method retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2674
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 2675
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2678
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerViewModel;->getSnapshot()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 2

    .line 2682
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_0

    .line 2683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use saveAllState when your FragmentHostCallback implements SavedStateRegistryOwner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2686
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    move-result-object v0

    .line 2687
    .local v0, "savedState":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method saveAllStateInternal()Landroid/os/Bundle;
    .locals 11

    .line 2691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2694
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->forcePostponedTransactions()V

    .line 2695
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 2696
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->execPendingActions(Z)Z

    .line 2698
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManager;->mStateSaved:Z

    .line 2699
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManagerViewModel;->setIsStateSaved(Z)V

    .line 2702
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStore;->saveActiveFragments()Ljava/util/ArrayList;

    move-result-object v1

    .line 2705
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStore;->getAllSavedState()Ljava/util/HashMap;

    move-result-object v2

    .line 2706
    .local v2, "savedState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    .line 2707
    invoke-static {v5}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2708
    const-string v3, "saveAllState: no fragments!"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2712
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentStore;->saveAddedFragments()Ljava/util/ArrayList;

    move-result-object v3

    .line 2715
    .local v3, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2716
    .local v6, "backStack":[Landroid/support/v4/app/BackStackRecordState;
    iget-object v7, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2717
    .local v7, "size":I
    if-lez v7, :cond_2

    .line 2718
    new-array v6, v7, [Landroid/support/v4/app/BackStackRecordState;

    .line 2719
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 2720
    new-instance v9, Landroid/support/v4/app/BackStackRecordState;

    iget-object v10, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v9, v10}, Landroid/support/v4/app/BackStackRecordState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v9, v6, v8

    .line 2721
    invoke-static {v5}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2722
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2723
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2722
    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2728
    .end local v8    # "i":I
    :cond_2
    new-instance v4, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v4}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 2729
    .local v4, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v4, Landroid/support/v4/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 2730
    iput-object v3, v4, Landroid/support/v4/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 2731
    iput-object v6, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackRecordState;

    .line 2732
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iput v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStackIndex:I

    .line 2733
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_3

    .line 2734
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 2736
    :cond_3
    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2737
    iget-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2738
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    .line 2739
    const-string/jumbo v5, "state"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2741
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2742
    .local v8, "resultName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2743
    .end local v8    # "resultName":Ljava/lang/String;
    goto :goto_1

    .line 2745
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2746
    .local v8, "fWho":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragment_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2747
    .end local v8    # "fWho":Ljava/lang/String;
    goto :goto_2

    .line 2750
    .end local v3    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "fms":Landroid/support/v4/app/FragmentManagerState;
    .end local v6    # "backStack":[Landroid/support/v4/app/BackStackRecordState;
    .end local v7    # "size":I
    :cond_5
    :goto_3
    return-object v0
.end method

.method public saveBackStack(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 956
    new-instance v0, Landroid/support/v4/app/FragmentManager$SaveBackStackState;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/FragmentManager$SaveBackStackState;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 957
    return-void
.end method

.method saveBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 16
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2429
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->findBackStackIndex(Ljava/lang/String;IZ)I

    move-result v2

    .line 2430
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 2431
    const/4 v3, 0x0

    return v3

    .line 2438
    :cond_0
    move v4, v2

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, "saveBackStack(\""

    if-ge v4, v5, :cond_2

    .line 2439
    iget-object v5, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    .line 2440
    .local v5, "record":Landroid/support/v4/app/BackStackRecord;
    iget-boolean v7, v5, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v7, :cond_1

    .line 2441
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " that did not use setReorderingAllowed(true)."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2438
    .end local v5    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2451
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2452
    .local v4, "allFragments":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/v4/app/Fragment;>;"
    move v5, v2

    .local v5, "i":I
    :goto_1
    iget-object v7, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_b

    .line 2453
    iget-object v7, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/BackStackRecord;

    .line 2454
    .local v7, "record":Landroid/support/v4/app/BackStackRecord;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2455
    .local v8, "affectedFragments":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/v4/app/Fragment;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2456
    .local v9, "addedFragments":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/v4/app/Fragment;>;"
    iget-object v10, v7, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 2457
    .local v11, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v12, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 2458
    .local v12, "f":Landroid/support/v4/app/Fragment;
    if-nez v12, :cond_3

    .line 2459
    goto :goto_2

    .line 2461
    :cond_3
    iget-boolean v13, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    const/4 v14, 0x2

    if-eqz v13, :cond_4

    iget v13, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    if-eq v13, v3, :cond_4

    iget v13, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    if-eq v13, v14, :cond_4

    iget v13, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    const/16 v15, 0x8

    if-ne v13, v15, :cond_5

    .line 2464
    :cond_4
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2465
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2467
    :cond_5
    iget v13, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    if-eq v13, v3, :cond_6

    iget v13, v11, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    if-ne v13, v14, :cond_7

    .line 2469
    :cond_6
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2471
    .end local v11    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v12    # "f":Landroid/support/v4/app/Fragment;
    :cond_7
    goto :goto_2

    .line 2472
    :cond_8
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2473
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 2474
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2477
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v12

    if-ne v12, v3, :cond_9

    .line 2478
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 2479
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " that were previously added to the FragmentManager through a separate FragmentTransaction."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2474
    invoke-direct {v0, v10}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2452
    .end local v7    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v8    # "affectedFragments":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/v4/app/Fragment;>;"
    .end local v9    # "addedFragments":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/v4/app/Fragment;>;"
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2487
    .end local v5    # "i":I
    :cond_b
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 2488
    .local v5, "fragmentsToSearch":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/support/v4/app/Fragment;>;"
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    .line 2489
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 2490
    .local v7, "currentFragment":Landroid/support/v4/app/Fragment;
    iget-boolean v8, v7, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v8, :cond_d

    .line 2491
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\") must not contain retained fragments. Found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2493
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2494
    const-string v10, "direct reference to retained "

    goto :goto_5

    .line 2495
    :cond_c
    const-string v10, "retained child "

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2491
    invoke-direct {v0, v8}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2499
    :cond_d
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->getActiveFragments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 2500
    .local v9, "f":Landroid/support/v4/app/Fragment;
    if-eqz v9, :cond_e

    .line 2501
    invoke-virtual {v5, v9}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2503
    .end local v9    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    goto :goto_6

    .line 2504
    .end local v7    # "currentFragment":Landroid/support/v4/app/Fragment;
    :cond_f
    goto :goto_4

    .line 2507
    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2508
    .local v6, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 2509
    .local v8, "f":Landroid/support/v4/app/Fragment;
    iget-object v9, v8, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    .end local v8    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_7

    .line 2511
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2512
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2514
    .local v7, "backStackRecordStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecordState;>;"
    move v8, v2

    .local v8, "i":I
    :goto_8
    iget-object v9, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_12

    .line 2515
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2514
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 2517
    .end local v8    # "i":I
    :cond_12
    new-instance v8, Landroid/support/v4/app/BackStackState;

    invoke-direct {v8, v6, v7}, Landroid/support/v4/app/BackStackState;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 2519
    .local v8, "backStackState":Landroid/support/v4/app/BackStackState;
    iget-object v9, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    .local v9, "i":I
    :goto_9
    if-lt v9, v2, :cond_13

    .line 2520
    iget-object v10, v0, Landroid/support/v4/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/BackStackRecord;

    .line 2523
    .local v10, "record":Landroid/support/v4/app/BackStackRecord;
    new-instance v11, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v11, v10}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    .line 2524
    .local v11, "copy":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v11}, Landroid/support/v4/app/BackStackRecord;->collapseOps()V

    .line 2525
    new-instance v12, Landroid/support/v4/app/BackStackRecordState;

    invoke-direct {v12, v11}, Landroid/support/v4/app/BackStackRecordState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    .line 2526
    .local v12, "state":Landroid/support/v4/app/BackStackRecordState;
    sub-int v13, v9, v2

    invoke-virtual {v7, v13, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2530
    iput-boolean v3, v10, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    .line 2531
    move-object/from16 v13, p1

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    .end local v10    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v11    # "copy":Landroid/support/v4/app/BackStackRecord;
    .end local v12    # "state":Landroid/support/v4/app/BackStackRecordState;
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    :cond_13
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    .line 2534
    .end local v9    # "i":I
    iget-object v9, v0, Landroid/support/v4/app/FragmentManager;->mBackStackStates:Ljava/util/Map;

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    return v3
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1467
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mFragmentStore:Landroid/support/v4/app/FragmentStore;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroid/support/v4/app/FragmentStateManager;

    move-result-object v0

    .line 1469
    .local v0, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1470
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 1473
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->saveInstanceState()Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    return-object v1
.end method

.method scheduleCommit()V
    .locals 4

    .line 1904
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1905
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1906
    .local v2, "pendingReady":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1907
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1908
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1909
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1911
    .end local v2    # "pendingReady":Z
    :cond_1
    monitor-exit v0

    .line 1912
    return-void

    .line 1911
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z

    .line 1641
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManager;->getFragmentContainer(Landroid/support/v4/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1642
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1643
    instance-of v1, v0, Landroid/support/v4/app/FragmentContainerView;

    if-eqz v1, :cond_0

    .line 1644
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentContainerView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 1647
    :cond_0
    return-void
.end method

.method public setFragmentFactory(Landroid/support/v4/app/FragmentFactory;)V
    .locals 0
    .param p1, "fragmentFactory"    # Landroid/support/v4/app/FragmentFactory;

    .line 3520
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    .line 3521
    return-void
.end method

.method public final setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 1162
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;

    .line 1164
    .local v0, "resultListener":Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;
    if-eqz v0, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1168
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mResults:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :goto_0
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting fragment result with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_1
    return-void
.end method

.method public final setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/support/v4/app/FragmentResultListener;)V
    .locals 5
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "listener"    # Landroid/support/v4/app/FragmentResultListener;

    .line 1188
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 1189
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 1190
    return-void

    .line 1193
    :cond_0
    new-instance v1, Landroid/support/v4/app/FragmentManager$6;

    invoke-direct {v1, p0, p1, p3, v0}, Landroid/support/v4/app/FragmentManager$6;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/support/v4/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V

    .line 1214
    .local v1, "observer":Landroidx/lifecycle/LifecycleEventObserver;
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager;->mResultListeners:Ljava/util/Map;

    new-instance v3, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;

    invoke-direct {v3, v0, p3, v1}, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/support/v4/app/FragmentResultListener;Landroidx/lifecycle/LifecycleEventObserver;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;

    .line 1216
    .local v2, "storedListener":Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;
    if-eqz v2, :cond_1

    .line 1217
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->removeObserver()V

    .line 1219
    :cond_1
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting FragmentResultListener with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lifecycleOwner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1226
    return-void
.end method

.method setMaxLifecycle(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 3501
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, p0, :cond_1

    .line 3506
    :cond_0
    iput-object p2, p1, Landroid/support/v4/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 3507
    return-void

    .line 3503
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 3461
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3463
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3466
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 3467
    .local v0, "previousPrimaryNav":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    .line 3468
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroid/support/v4/app/Fragment;)V

    .line 3469
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v1}, Landroid/support/v4/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroid/support/v4/app/Fragment;)V

    .line 3470
    return-void
.end method

.method setSpecialEffectsControllerFactory(Landroid/support/v4/app/SpecialEffectsControllerFactory;)V
    .locals 0
    .param p1, "specialEffectsControllerFactory"    # Landroid/support/v4/app/SpecialEffectsControllerFactory;

    .line 3555
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager;->mSpecialEffectsControllerFactory:Landroid/support/v4/app/SpecialEffectsControllerFactory;

    .line 3556
    return-void
.end method

.method public setStrictModePolicy(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;)V
    .locals 0
    .param p1, "policy"    # Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 3723
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager;->mStrictModePolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 3724
    return-void
.end method

.method showFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 1764
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    .line 1766
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1769
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1771
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1506
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    const-string/jumbo v2, "}"

    const-string/jumbo v3, "{"

    if-eqz v1, :cond_0

    .line 1510
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1511
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mParent:Landroid/support/v4/app/Fragment;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v1, :cond_1

    .line 1516
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1517
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 1522
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3603
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 3604
    return-void
.end method

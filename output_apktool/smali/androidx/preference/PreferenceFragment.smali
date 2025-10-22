.class public abstract Landroidx/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroidx/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragment$DividerDecoration;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 120
    new-instance v0, Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$DividerDecoration;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 126
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 129
    new-instance v0, Landroidx/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$1;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Landroidx/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$2;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 497
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 499
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 491
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 494
    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    .line 670
    new-instance v0, Landroidx/preference/PreferenceFragment$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/PreferenceFragment$3;-><init>(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 700
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 701
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 703
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 705
    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 1

    .line 511
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 512
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    .line 515
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 516
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 388
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 389
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 390
    return-void
.end method

.method bindPreferences()V
    .locals 3

    .line 502
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 503
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 505
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onAttached()V

    .line 507
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onBindPreferences()V

    .line 508
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1

    .line 650
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 519
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 150
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 152
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 153
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 154
    .local v1, "theme":I
    if-nez v1, :cond_0

    .line 156
    sget v1, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 158
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 160
    new-instance v2, Landroidx/preference/PreferenceManager;

    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 161
    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2, p0}, Landroidx/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 162
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 164
    .local v2, "args":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "rootKey":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v3    # "rootKey":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 169
    .restart local v3    # "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v3}, Landroidx/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    sget v0, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 555
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v0, :cond_0

    .line 556
    return-object v0

    .line 559
    .end local v0    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    sget v0, Landroidx/preference/R$layout;->preference_recyclerview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 562
    .restart local v0    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 563
    new-instance v1, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 566
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 191
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget-object v1, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget v3, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    .line 193
    const v4, 0x1010506

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    .line 191
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_layout:I

    iget v2, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 198
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    sget v2, Landroidx/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 201
    .local v2, "dividerHeight":I
    sget v5, Landroidx/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 203
    .local v5, "allowDividerAfterLastItem":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    iget-object v6, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 207
    .local v6, "themedInflater":Landroid/view/LayoutInflater;
    iget v7, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v6, v7, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 209
    .local v4, "view":Landroid/view/View;
    const v7, 0x102003f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 210
    .local v7, "rawListContainer":Landroid/view/View;
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    .line 215
    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    .line 217
    .local v8, "listContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v6, v8, p3}, Landroidx/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v9

    .line 219
    .local v9, "listView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v9, :cond_2

    .line 223
    iput-object v9, p0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 225
    iget-object v10, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 226
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 227
    if-eq v2, v3, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->setDividerHeight(I)V

    .line 230
    :cond_0
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 234
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 235
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    :cond_1
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-object v4

    .line 220
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v10, "Could not create RecyclerView"

    invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    .end local v8    # "listContainer":Landroid/view/ViewGroup;
    .end local v9    # "listView":Landroid/support/v7/widget/RecyclerView;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onDestroyView()V
    .locals 2

    .line 313
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->unbindPreferences()V

    .line 318
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 319
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 320
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 612
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 614
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 616
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 619
    :cond_1
    if-eqz v0, :cond_2

    .line 620
    return-void

    .line 624
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 625
    return-void

    .line 629
    :cond_3
    instance-of v1, p1, Landroidx/preference/EditTextPreference;

    if-eqz v1, :cond_4

    .line 630
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;

    move-result-object v1

    .local v1, "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 631
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_4
    instance-of v1, p1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 632
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragment;

    move-result-object v1

    .restart local v1    # "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 633
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_5
    instance-of v1, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_6

    .line 634
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object v1

    .line 639
    .restart local v1    # "f":Landroid/app/DialogFragment;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 640
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 641
    return-void

    .line 636
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 463
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    .line 465
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 467
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    .line 469
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 435
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 437
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 439
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 441
    :cond_1
    return v0

    .line 443
    .end local v0    # "handled":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 324
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 326
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 327
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 328
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 330
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 299
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 300
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 301
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 302
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 306
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 307
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 308
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 309
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 522
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 274
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 276
    if-eqz p2, :cond_0

    .line 277
    const-string v0, "android:preferences"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 280
    .local v1, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 286
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroidx/preference/PreferenceScreen;
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->bindPreferences()V

    .line 288
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 294
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    .line 295
    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 256
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    .line 270
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferences(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    .line 358
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->postBindPreferences()V

    .line 362
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 407
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 411
    .local v0, "xmlRoot":Landroidx/preference/PreferenceScreen;
    if-eqz p2, :cond_1

    .line 412
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 413
    .local v1, "root":Landroidx/preference/Preference;
    instance-of v2, v1, Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference object with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a PreferenceScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v1    # "root":Landroidx/preference/Preference;
    :cond_1
    move-object v1, v0

    .line 421
    .restart local v1    # "root":Landroidx/preference/Preference;
    :goto_0
    move-object v2, v1

    check-cast v2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 422
    return-void
.end method

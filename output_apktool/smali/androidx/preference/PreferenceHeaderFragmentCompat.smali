.class public abstract Landroidx/preference/PreferenceHeaderFragmentCompat;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceHeaderFragmentCompat.kt"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceHeaderFragmentCompat$InnerOnBackPressedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceHeaderFragmentCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceHeaderFragmentCompat.kt\nandroidx/preference/PreferenceHeaderFragmentCompat\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,300:1\n27#2,11:301\n27#2,11:312\n27#2,11:323\n27#2,11:343\n27#2,11:354\n1#3:334\n65#4,4:335\n37#4:339\n53#4:340\n71#4,2:341\n*S KotlinDebug\n*F\n+ 1 PreferenceHeaderFragmentCompat.kt\nandroidx/preference/PreferenceHeaderFragmentCompat\n*L\n91#1:301,11\n129#1:312,11\n145#1:323,11\n216#1:343,11\n279#1:354,11\n199#1:335,4\n199#1:339\n199#1:340\n199#1:341,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0017J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0017J\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u001e\u001a\u00020\u000eH&J\u001a\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0017J\u0012\u0010!\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\n\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0010H\u0002J\u0012\u0010#\u001a\u00020\u00122\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006("
    }
    d2 = {
        "Landroidx/preference/PreferenceHeaderFragmentCompat;",
        "Landroid/support/v4/app/Fragment;",
        "Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;",
        "<init>",
        "()V",
        "onBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "slidingPaneLayout",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "getSlidingPaneLayout",
        "()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "onPreferenceStartFragment",
        "",
        "caller",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "pref",
        "Landroidx/preference/Preference;",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "buildContentView",
        "onCreatePreferenceHeader",
        "onViewCreated",
        "view",
        "onViewStateRestored",
        "onCreateInitialDetailFragment",
        "openPreferenceHeader",
        "header",
        "intent",
        "Landroid/content/Intent;",
        "InnerOnBackPressedCallback",
        "preference_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public static synthetic $r8$lambda$UbjNwIg90zfY4Qg502_WsEsfVZQ(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 0

    invoke-static {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->onViewCreated$lambda$10(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    return-void
.end method

.method public static final synthetic access$getOnBackPressedCallback$p(Landroidx/preference/PreferenceHeaderFragmentCompat;)Landroidx/activity/OnBackPressedCallback;
    .locals 1
    .param p0, "$this"    # Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 60
    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    return-object v0
.end method

.method private final buildContentView(Landroid/view/LayoutInflater;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 157
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 334
    .local v1, "$this$buildContentView_u24lambda_u244":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$slidingPaneLayout$1":I
    sget v3, Landroidx/preference/R$id;->preferences_sliding_pane_layout:I

    invoke-virtual {v1, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setId(I)V

    .line 156
    .end local v1    # "$this$buildContentView_u24lambda_u244":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v2    # "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$slidingPaneLayout$1":I
    nop

    .line 160
    .local v0, "slidingPaneLayout":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    new-instance v1, Landroid/support/v4/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .line 334
    .local v2, "$this$buildContentView_u24lambda_u245":Landroid/support/v4/app/FragmentContainerView;
    const/4 v3, 0x0

    .line 160
    .local v3, "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$headerContainer$1":I
    sget v4, Landroidx/preference/R$id;->preferences_header:I

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentContainerView;->setId(I)V

    .line 159
    .end local v2    # "$this$buildContentView_u24lambda_u245":Landroid/support/v4/app/FragmentContainerView;
    .end local v3    # "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$headerContainer$1":I
    nop

    .line 162
    .local v1, "headerContainer":Landroid/support/v4/app/FragmentContainerView;
    new-instance v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 163
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/preference/R$dimen;->preferences_header_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 164
    nop

    .line 162
    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(II)V

    .line 166
    move-object v3, v2

    .local v3, "$this$buildContentView_u24lambda_u246":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$headerLayoutParams$1":I
    nop

    .line 168
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/preference/R$integer;->preferences_header_pane_weight:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    .line 167
    iput v6, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 169
    nop

    .line 166
    .end local v3    # "$this$buildContentView_u24lambda_u246":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v5    # "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$headerLayoutParams$1":I
    nop

    .line 161
    nop

    .line 170
    .local v2, "headerLayoutParams":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v3, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v3, Landroid/support/v4/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/support/v4/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    move-object v5, v3

    .line 334
    .local v5, "$this$buildContentView_u24lambda_u247":Landroid/support/v4/app/FragmentContainerView;
    const/4 v6, 0x0

    .line 174
    .local v6, "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$detailContainer$1":I
    sget v7, Landroidx/preference/R$id;->preferences_detail:I

    invoke-virtual {v5, v7}, Landroid/support/v4/app/FragmentContainerView;->setId(I)V

    .line 173
    .end local v5    # "$this$buildContentView_u24lambda_u247":Landroid/support/v4/app/FragmentContainerView;
    .end local v6    # "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$detailContainer$1":I
    nop

    .line 176
    .local v3, "detailContainer":Landroid/support/v4/app/FragmentContainerView;
    new-instance v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 177
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/preference/R$dimen;->preferences_detail_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 178
    nop

    .line 176
    invoke-direct {v5, v6, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(II)V

    .line 180
    move-object v4, v5

    .local v4, "$this$buildContentView_u24lambda_u248":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v6, 0x0

    .line 181
    .local v6, "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$detailLayoutParams$1":I
    nop

    .line 182
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/preference/R$integer;->preferences_detail_pane_weight:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    .line 181
    iput v7, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 183
    nop

    .line 180
    .end local v4    # "$this$buildContentView_u24lambda_u248":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v6    # "$i$a$-apply-PreferenceHeaderFragmentCompat$buildContentView$detailLayoutParams$1":I
    nop

    .line 175
    nop

    .line 184
    .local v5, "detailLayoutParams":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-object v0
.end method

.method private static final onViewCreated$lambda$10(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 2
    .param p0, "this$0"    # Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 204
    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method private final openPreferenceHeader(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 295
    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->startActivity(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method private final openPreferenceHeader(Landroidx/preference/Preference;)V
    .locals 8
    .param p1, "header"    # Landroidx/preference/Preference;

    .line 262
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->openPreferenceHeader(Landroid/content/Intent;)V

    .line 264
    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 268
    .local v1, "$i$a$-let-PreferenceHeaderFragmentCompat$openPreferenceHeader$fragment$1":I
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 267
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-PreferenceHeaderFragmentCompat$openPreferenceHeader$fragment$1":I
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 266
    :goto_0
    nop

    .line 271
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 334
    .local v1, "$this$openPreferenceHeader_u24lambda_u2416":Landroid/support/v4/app/Fragment;
    const/4 v2, 0x0

    .line 271
    .local v2, "$i$a$-apply-PreferenceHeaderFragmentCompat$openPreferenceHeader$1":I
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 274
    .end local v1    # "$this$openPreferenceHeader_u24lambda_u2416":Landroid/support/v4/app/Fragment;
    .end local v2    # "$i$a$-apply-PreferenceHeaderFragmentCompat$openPreferenceHeader$1":I
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 275
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    const-string v3, "getBackStackEntryAt(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .local v1, "entry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 279
    .end local v1    # "entry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "getChildFragmentManager(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .local v1, "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    const/4 v3, 0x0

    .local v3, "allowStateLoss$iv":Z
    const/4 v4, 0x0

    .line 357
    .local v4, "$i$f$commit":I
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "beginTransaction()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .local v5, "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    move-object v6, v5

    .local v6, "$this$openPreferenceHeader_u24lambda_u2417":Landroid/support/v4/app/FragmentTransaction;
    const/4 v7, 0x0

    .line 280
    .local v7, "$i$a$-commit$default-PreferenceHeaderFragmentCompat$openPreferenceHeader$2":I
    invoke-virtual {v6, v2}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    sget v2, Landroidx/preference/R$id;->preferences_detail:I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    const/16 v2, 0x1003

    invoke-virtual {v6, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 285
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    .line 286
    nop

    .line 358
    .end local v6    # "$this$openPreferenceHeader_u24lambda_u2417":Landroid/support/v4/app/FragmentTransaction;
    .end local v7    # "$i$a$-commit$default-PreferenceHeaderFragmentCompat$openPreferenceHeader$2":I
    nop

    .line 359
    nop

    .line 362
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 363
    nop

    .line 364
    nop

    .line 287
    .end local v1    # "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "allowStateLoss$iv":Z
    .end local v4    # "$i$f$commit":I
    .end local v5    # "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    return-void
.end method


# virtual methods
.method public final getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->requireView()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "getParentFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .local v0, "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x0

    .local v1, "allowStateLoss$iv":Z
    const/4 v2, 0x0

    .line 315
    .local v2, "$i$f$commit":I
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "beginTransaction()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .local v3, "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    move-object v4, v3

    .local v4, "$this$onAttach_u24lambda_u241":Landroid/support/v4/app/FragmentTransaction;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onAttach$1":I
    move-object v6, p0

    check-cast v6, Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    nop

    .line 316
    .end local v4    # "$this$onAttach_u24lambda_u241":Landroid/support/v4/app/FragmentTransaction;
    .end local v5    # "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onAttach$1":I
    nop

    .line 317
    nop

    .line 320
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 321
    nop

    .line 322
    nop

    .line 132
    .end local v0    # "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "allowStateLoss$iv":Z
    .end local v2    # "$i$f$commit":I
    .end local v3    # "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    return-void
.end method

.method public onCreateInitialDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 7

    .line 232
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroidx/preference/R$id;->preferences_header:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.preference.PreferenceFragmentCompat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 231
    nop

    .line 234
    .local v0, "headerFragment":Landroidx/preference/PreferenceFragmentCompat;
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 235
    return-object v2

    .line 237
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_4

    .line 238
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    const-string v5, "getPreference(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .local v4, "header":Landroidx/preference/Preference;
    invoke-virtual {v4}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 240
    nop

    .line 237
    .end local v4    # "header":Landroidx/preference/Preference;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .restart local v4    # "header":Landroidx/preference/Preference;
    :cond_1
    invoke-virtual {v4}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .local v3, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 244
    .local v2, "$i$a$-let-PreferenceHeaderFragmentCompat$onCreateInitialDetailFragment$fragment$1":I
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v5

    .line 245
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 246
    nop

    .line 244
    invoke-virtual {v5, v6, v3}, Landroid/support/v4/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 247
    nop

    .line 243
    .end local v2    # "$i$a$-let-PreferenceHeaderFragmentCompat$onCreateInitialDetailFragment$fragment$1":I
    .end local v3    # "it":Ljava/lang/String;
    move-object v2, v5

    .line 242
    :cond_2
    nop

    .line 249
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    move-object v3, v2

    .line 334
    .local v3, "$this$onCreateInitialDetailFragment_u24lambda_u2414":Landroid/support/v4/app/Fragment;
    const/4 v5, 0x0

    .line 249
    .local v5, "$i$a$-apply-PreferenceHeaderFragmentCompat$onCreateInitialDetailFragment$1":I
    invoke-virtual {v4}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 250
    .end local v3    # "$this$onCreateInitialDetailFragment_u24lambda_u2414":Landroid/support/v4/app/Fragment;
    .end local v5    # "$i$a$-apply-PreferenceHeaderFragmentCompat$onCreateInitialDetailFragment$1":I
    :cond_3
    return-object v2

    .line 252
    .end local v1    # "index":I
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "header":Landroidx/preference/Preference;
    :cond_4
    return-object v2
.end method

.method public abstract onCreatePreferenceHeader()Landroidx/preference/PreferenceFragmentCompat;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->buildContentView(Landroid/view/LayoutInflater;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v0

    .line 142
    .local v0, "slidingPaneLayout":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Landroidx/preference/R$id;->preferences_header:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 143
    .local v1, "existingHeaderFragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->onCreatePreferenceHeader()Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v2

    .local v2, "newHeaderFragment":Landroidx/preference/PreferenceFragmentCompat;
    const/4 v3, 0x0

    .line 145
    .local v3, "$i$a$-also-PreferenceHeaderFragmentCompat$onCreateView$1":I
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "getChildFragmentManager(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .local v4, "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    const/4 v5, 0x0

    .local v5, "allowStateLoss$iv":Z
    const/4 v6, 0x0

    .line 326
    .local v6, "$i$f$commit":I
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "beginTransaction()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .local v7, "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    move-object v8, v7

    .local v8, "$this$onCreateView_u24lambda_u243_u24lambda_u242":Landroid/support/v4/app/FragmentTransaction;
    const/4 v9, 0x0

    .line 146
    .local v9, "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onCreateView$1$1":I
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    .line 147
    sget v10, Landroidx/preference/R$id;->preferences_header:I

    move-object v11, v2

    check-cast v11, Landroid/support/v4/app/Fragment;

    invoke-virtual {v8, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    nop

    .line 327
    .end local v8    # "$this$onCreateView_u24lambda_u243_u24lambda_u242":Landroid/support/v4/app/FragmentTransaction;
    .end local v9    # "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onCreateView$1$1":I
    nop

    .line 328
    nop

    .line 331
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 332
    nop

    .line 333
    nop

    .line 149
    .end local v4    # "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    .end local v5    # "allowStateLoss$iv":Z
    .end local v6    # "$i$f$commit":I
    .end local v7    # "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    nop

    .line 144
    .end local v2    # "newHeaderFragment":Landroidx/preference/PreferenceFragmentCompat;
    .end local v3    # "$i$a$-also-PreferenceHeaderFragmentCompat$onCreateView$1":I
    nop

    .line 151
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    .line 152
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    return-object v2
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 9
    .param p1, "caller"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/Preference;

    const-string v0, "caller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getId()I

    move-result v0

    sget v1, Landroidx/preference/R$id;->preferences_header:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-direct {p0, p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->openPreferenceHeader(Landroidx/preference/Preference;)V

    .line 80
    return v2

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getId()I

    move-result v0

    sget v1, Landroidx/preference/R$id;->preferences_detail:I

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "instantiate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    nop

    .line 89
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "getChildFragmentManager(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .local v1, "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    const/4 v3, 0x0

    .local v3, "allowStateLoss$iv":Z
    const/4 v4, 0x0

    .line 304
    .local v4, "$i$f$commit":I
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "beginTransaction()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .local v5, "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    move-object v6, v5

    .local v6, "$this$onPreferenceStartFragment_u24lambda_u240":Landroid/support/v4/app/FragmentTransaction;
    const/4 v7, 0x0

    .line 92
    .local v7, "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onPreferenceStartFragment$1":I
    invoke-virtual {v6, v2}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    sget v8, Landroidx/preference/R$id;->preferences_detail:I

    invoke-virtual {v6, v8, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 94
    const/16 v8, 0x1003

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    nop

    .line 305
    .end local v6    # "$this$onPreferenceStartFragment_u24lambda_u240":Landroid/support/v4/app/FragmentTransaction;
    .end local v7    # "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onPreferenceStartFragment$1":I
    nop

    .line 306
    nop

    .line 309
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 310
    nop

    .line 311
    nop

    .line 97
    .end local v1    # "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "allowStateLoss$iv":Z
    .end local v4    # "$i$f$commit":I
    .end local v5    # "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    return v2

    .line 99
    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 198
    new-instance v0, Landroidx/preference/PreferenceHeaderFragmentCompat$InnerOnBackPressedCallback;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$InnerOnBackPressedCallback;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    check-cast v0, Landroidx/activity/OnBackPressedCallback;

    iput-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 199
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "$this$doOnLayout$iv":Landroid/view/View;
    const/4 v1, 0x0

    .line 335
    .local v1, "$i$f$doOnLayout":I
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    move-object v2, v0

    .local v2, "it":Landroid/view/View;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$a$-doOnLayout-PreferenceHeaderFragmentCompat$onViewCreated$1":I
    invoke-static {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->access$getOnBackPressedCallback$p(Landroidx/preference/PreferenceHeaderFragmentCompat;)Landroidx/activity/OnBackPressedCallback;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getSlidingPaneLayout()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 200
    :goto_0
    invoke-virtual {v4, v5}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 202
    nop

    .line 336
    .end local v2    # "it":Landroid/view/View;
    .end local v3    # "$i$a$-doOnLayout-PreferenceHeaderFragmentCompat$onViewCreated$1":I
    goto :goto_1

    .line 338
    :cond_1
    move-object v2, v0

    .local v2, "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    const/4 v3, 0x0

    .line 339
    .local v3, "$i$f$doOnNextLayout":I
    new-instance v4, Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;

    invoke-direct {v4, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    check-cast v4, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 340
    nop

    .line 341
    .end local v2    # "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    .end local v3    # "$i$f$doOnNextLayout":I
    :goto_1
    nop

    .line 342
    nop

    .line 203
    .end local v0    # "$this$doOnLayout$iv":Landroid/view/View;
    .end local v1    # "$i$f$doOnLayout":I
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    new-instance v1, Landroidx/preference/PreferenceHeaderFragmentCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 206
    invoke-static {p1}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->get(Landroid/view/View;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v0

    .line 208
    .local v0, "onBackPressedDispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    nop

    .line 209
    nop

    .line 208
    if-eqz v0, :cond_2

    .line 207
    nop

    .line 208
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    .line 207
    nop

    .line 209
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    goto :goto_2

    .line 208
    :cond_2
    nop

    .line 210
    :goto_2
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 214
    if-nez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->onCreateInitialDetailFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    .line 216
    .local v1, "$i$a$-let-PreferenceHeaderFragmentCompat$onViewStateRestored$1":I
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "getChildFragmentManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .local v2, "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    const/4 v3, 0x0

    .local v3, "allowStateLoss$iv":Z
    const/4 v4, 0x0

    .line 346
    .local v4, "$i$f$commit":I
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "beginTransaction()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .local v5, "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    move-object v6, v5

    .local v6, "$this$onViewStateRestored_u24lambda_u2412_u24lambda_u2411":Landroid/support/v4/app/FragmentTransaction;
    const/4 v7, 0x0

    .line 217
    .local v7, "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onViewStateRestored$1$1":I
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    sget v8, Landroidx/preference/R$id;->preferences_detail:I

    invoke-virtual {v6, v8, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 219
    nop

    .line 347
    .end local v6    # "$this$onViewStateRestored_u24lambda_u2412_u24lambda_u2411":Landroid/support/v4/app/FragmentTransaction;
    .end local v7    # "$i$a$-commit$default-PreferenceHeaderFragmentCompat$onViewStateRestored$1$1":I
    nop

    .line 348
    nop

    .line 351
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 352
    nop

    .line 353
    nop

    .line 220
    .end local v2    # "$this$commit$iv":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "allowStateLoss$iv":Z
    .end local v4    # "$i$f$commit":I
    .end local v5    # "transaction$iv":Landroid/support/v4/app/FragmentTransaction;
    nop

    .line 215
    .end local v0    # "it":Landroid/support/v4/app/Fragment;
    .end local v1    # "$i$a$-let-PreferenceHeaderFragmentCompat$onViewStateRestored$1":I
    nop

    .line 222
    :cond_0
    return-void
.end method

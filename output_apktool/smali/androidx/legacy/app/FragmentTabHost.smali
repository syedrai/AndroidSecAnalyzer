.class public Landroidx/legacy/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/legacy/app/FragmentTabHost$SavedState;,
        Landroidx/legacy/app/FragmentTabHost$DummyTabFactory;,
        Landroidx/legacy/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/legacy/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 134
    invoke-direct {p0, p1, v0}, Landroidx/legacy/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 145
    invoke-direct {p0, p1, p2}, Landroidx/legacy/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "newTab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 392
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    .line 393
    .local v2, "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    iget-object v3, v2, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    move-object v0, v2

    .line 391
    .end local v2    # "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_7

    .line 400
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    if-eq v1, v0, :cond_6

    .line 401
    if-nez p2, :cond_2

    .line 402
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 404
    :cond_2
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    if-eqz v1, :cond_3

    .line 405
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 409
    :cond_3
    if-eqz v0, :cond_5

    .line 410
    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_4

    .line 411
    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 412
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 411
    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 413
    iget v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    iget-object v2, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget-object v3, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 415
    :cond_4
    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 419
    :cond_5
    :goto_1
    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    .line 421
    :cond_6
    return-object p2

    .line 398
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tab known for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureContent()V
    .locals 3

    .line 234
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 235
    iget v0, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroidx/legacy/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 236
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroidx/legacy/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroidx/legacy/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 170
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v4, "fl":Landroid/widget/FrameLayout;
    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 176
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    iput-object v5, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 179
    iget-object v5, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v6, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 180
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    const v0, 0x10100f3

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 155
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroidx/legacy/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/legacy/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 262
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroidx/legacy/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 266
    .local v1, "info":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    iget-boolean v2, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 271
    iget-object v2, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 273
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, v1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 274
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 278
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 280
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 292
    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 297
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 298
    iget-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    .line 299
    .local v3, "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    .line 300
    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    iput-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    goto :goto_1

    .line 309
    :cond_0
    if-nez v1, :cond_1

    .line 310
    iget-object v4, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 312
    :cond_1
    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 297
    .end local v3    # "tab":Landroidx/legacy/app/FragmentTabHost$TabInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    .line 320
    invoke-direct {p0, v0, v1}, Landroidx/legacy/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_4

    .line 322
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 323
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 325
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    .line 337
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    instance-of v0, p1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 362
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 363
    return-void

    .line 365
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/legacy/app/FragmentTabHost$SavedState;

    .line 366
    .local v0, "ss":Landroidx/legacy/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroidx/legacy/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 367
    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 348
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/legacy/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 349
    .local v1, "ss":Landroidx/legacy/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/legacy/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 350
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    iget-boolean v0, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/legacy/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 380
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 384
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 387
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 252
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-direct {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 205
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 206
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 208
    invoke-direct {p0}, Landroidx/legacy/app/FragmentTabHost;->ensureContent()V

    .line 209
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .param p3, "containerId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 219
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 220
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 222
    iput p3, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    .line 223
    invoke-direct {p0}, Landroidx/legacy/app/FragmentTabHost;->ensureContent()V

    .line 224
    iget-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 228
    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroidx/legacy/app/FragmentTabHost;->setId(I)V

    .line 231
    :cond_0
    return-void
.end method

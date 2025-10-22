.class public abstract Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;
.super Landroid/app/Fragment;
.source "ProfileOrParentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Container"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;",
            ">;"
        }
    .end annotation
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

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->setRetainInstance(Z)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
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

    .line 64
    new-instance v0, Landroidx/legacy/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/legacy/app/FragmentTabHost;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "tabHost":Landroidx/legacy/app/FragmentTabHost;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/legacy/app/FragmentTabHost;->setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 71
    .local v1, "showDualTabs":Z
    :goto_0
    const-string v4, "com.afwsamples.testdpc.extra.PARENT"

    if-eqz v1, :cond_1

    .line 72
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v5, "parentArgs":Landroid/os/Bundle;
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    nop

    .line 75
    const-string v6, "parent"

    invoke-virtual {v0, v6}, Landroidx/legacy/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    sget v7, Lcom/afwsamples/testdpc/R$string;->personal_profile:I

    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 76
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getContentClass()Ljava/lang/Class;

    move-result-object v7

    .line 74
    invoke-virtual {v0, v6, v7, v5}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 81
    .end local v5    # "parentArgs":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 82
    .restart local v5    # "parentArgs":Landroid/os/Bundle;
    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    nop

    .line 84
    const-string v4, "profile"

    invoke-virtual {v0, v4}, Landroidx/legacy/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    sget v6, Lcom/afwsamples/testdpc/R$string;->work_profile:I

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 85
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getContentClass()Ljava/lang/Class;

    move-result-object v6

    .line 83
    invoke-virtual {v0, v4, v6, v5}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 88
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0, v2}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTab(I)V

    .line 94
    invoke-virtual {v0}, Landroidx/legacy/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 96
    :goto_1
    return-object v0
.end method

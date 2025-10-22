.class public Lcom/afwsamples/testdpc/CrossProfileAppsFragment;
.super Landroid/app/Fragment;
.source "CrossProfileAppsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileAppsFragmen"


# instance fields
.field private mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mInflatedView:Landroid/view/View;

.field private mSwitchProfileImageView:Landroid/widget/ImageView;

.field private mSwitchProfileTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$U_u83eoLxEzcD_oB1ZUKru1vCuA(Lcom/afwsamples/testdpc/CrossProfileAppsFragment;Landroid/os/UserHandle;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->lambda$showHasTargetUserUi$0(Landroid/os/UserHandle;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$showHasTargetUserUi$0(Landroid/os/UserHandle;Landroid/view/View;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "view"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    new-instance v1, Landroid/content/ComponentName;

    .line 73
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/CrossProfileApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method private refreshUi()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v0}, Landroid/content/pm/CrossProfileApps;->getTargetUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "targetUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->showNoTargetUserUi()V

    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->showHasTargetUserUi(Landroid/os/UserHandle;)V

    .line 56
    :goto_0
    return-void
.end method

.method private showHasTargetUserUi(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userHandle"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v1, p1}, Landroid/content/pm/CrossProfileApps;->getProfileSwitchingLabel(Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 68
    invoke-virtual {v1, p1}, Landroid/content/pm/CrossProfileApps;->getProfileSwitchingIconDrawable(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mDescriptionTextView:Landroid/widget/TextView;

    sget v1, Lcom/afwsamples/testdpc/R$string;->cross_profile_apps_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsFragment;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private showNoTargetUserUi()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mDescriptionTextView:Landroid/widget/TextView;

    sget v1, Lcom/afwsamples/testdpc/R$string;->cross_profile_apps_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/CrossProfileApps;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 30
    sget v0, Lcom/afwsamples/testdpc/R$layout;->cross_profile_apps:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mInflatedView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileTextView:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mSwitchProfileImageView:Landroid/widget/ImageView;

    .line 33
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mInflatedView:Landroid/view/View;

    sget v1, Lcom/afwsamples/testdpc/R$id;->cross_profile_app_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mDescriptionTextView:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->mInflatedView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->refreshUi()V

    .line 47
    return-void
.end method

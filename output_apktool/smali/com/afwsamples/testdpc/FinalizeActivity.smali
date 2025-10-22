.class public Lcom/afwsamples/testdpc/FinalizeActivity;
.super Landroid/app/Activity;
.source "FinalizeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSetupWizardLayout:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/afwsamples/testdpc/FinalizeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/FinalizeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAddedAccountName()Ljava/lang/String;
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "addedAccount":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    nop

    .line 119
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 118
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccountName(Landroid/os/PersistableBundle;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method

.method private isAccountMigrated(Ljava/lang/String;)Z
    .locals 6
    .param p1, "addedAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addedAccount"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 126
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 127
    .local v4, "account":Landroid/accounts/Account;
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v4    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningUtil;->enableProfile(Landroid/content/Context;)V

    .line 56
    :cond_0
    invoke-static {}, Lcom/afwsamples/testdpc/provision/ProvisioningUtil;->isAutoProvisioningDeviceOwnerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/afwsamples/testdpc/FinalizeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Automatically provisioning device onwer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/FinalizeActivity;->onNavigateNext(Landroid/view/View;)V

    .line 59
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/common/ThemeUtil;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    sget v0, Lcom/afwsamples/testdpc/R$layout;->finalize_activity:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/FinalizeActivity;->setContentView(I)V

    .line 66
    sget v0, Lcom/afwsamples/testdpc/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mSetupWizardLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 67
    iget-object v0, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mSetupWizardLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 68
    .local v0, "mixin":Lcom/google/android/setupcompat/template/FooterBarMixin;
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->finish_button:I

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/FinalizeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/FinalizeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/FinalizeActivity;)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 72
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$style;->SudGlifButton_Primary:I

    .line 73
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 75
    .local v1, "finishButton":Lcom/google/android/setupcompat/template/FooterButton;
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 78
    sget v2, Lcom/afwsamples/testdpc/R$id;->app_icon:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 79
    .local v2, "appIcon":Landroid/widget/ImageView;
    sget v3, Lcom/afwsamples/testdpc/R$id;->app_label:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "appLabel":Landroid/widget/TextView;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 82
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 83
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 84
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TestDPC"

    const-string v7, "Couldn\'t look up our own package?!?!"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getAddedAccountName()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "addedAccount":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 94
    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/FinalizeActivity;->isAccountMigrated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    sget v6, Lcom/afwsamples/testdpc/R$id;->account_migration_success:I

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .local v6, "accountMigrationStatusLayout":Landroid/view/View;
    goto :goto_1

    .line 97
    .end local v6    # "accountMigrationStatusLayout":Landroid/view/View;
    :cond_2
    sget v6, Lcom/afwsamples/testdpc/R$id;->account_migration_fail:I

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 99
    .restart local v6    # "accountMigrationStatusLayout":Landroid/view/View;
    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    sget v4, Lcom/afwsamples/testdpc/R$id;->managed_account_name:I

    .line 101
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 102
    .local v4, "managedAccountName":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v4    # "managedAccountName":Landroid/widget/TextView;
    .end local v6    # "accountMigrationStatusLayout":Landroid/view/View;
    :cond_3
    sget v4, Lcom/afwsamples/testdpc/R$id;->explanation:I

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 108
    sget v6, Lcom/afwsamples/testdpc/R$string;->all_done_explanation_device_owner:I

    goto :goto_2

    .line 109
    :cond_4
    sget v6, Lcom/afwsamples/testdpc/R$string;->all_done_explanation_profile_owner:I

    .line 106
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 1
    .param p1, "nextButton"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextButton"
        }
    .end annotation

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/FinalizeActivity;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->finish()V

    .line 137
    return-void
.end method

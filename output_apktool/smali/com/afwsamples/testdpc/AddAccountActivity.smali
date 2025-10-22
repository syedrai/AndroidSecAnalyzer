.class public Lcom/afwsamples/testdpc/AddAccountActivity;
.super Landroid/app/Activity;
.source "AddAccountActivity.java"


# static fields
.field public static final EXTRA_NEXT_ACTIVITY_INTENT:Ljava/lang/String; = "nextActivityIntent"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final TAG:Ljava/lang/String; = "AddAccountActivity"

.field private static final WAIT_FOR_FOREGROUND_DELAY_MS:J = 0xaL


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisallowModifyAccounts:Z

.field private mNextActivityIntent:Landroid/content/Intent;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$C2m_EZ4fJI62yB3Kd9_Qon5E_ns(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$onNavigateNext$0(Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MLynRIxBzVOFYsI6_7DwmV4lb18(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$addAccount$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOvUXuEnc80B8fkpesRgxei47DA(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$addAccount$0(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1JT84af7MVU9Wv2d-g6K-ag1V0(Lcom/afwsamples/testdpc/AddAccountActivity;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$waitForForeground$0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method private accountCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 157
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "accountNameAdded":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount - accountNameAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AddAccountActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v1, "resultIntent":Landroid/content/Intent;
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->finish()V

    .line 167
    return-void
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountName"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 114
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "authAccount"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    new-instance v6, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;)V

    const/4 v7, 0x0

    const-string v1, "com.google"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 138
    return-void
.end method

.method private disableUserRestrictions()V
    .locals 3

    .line 170
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "AddAccountActivity"

    if-lt v0, v1, :cond_0

    .line 172
    const-string/jumbo v0, "skip disabling user restriction on N or above"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 175
    :cond_0
    const-string v0, "disabling user restrictions"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_modify_accounts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDisallowModifyAccounts:Z

    .line 177
    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private synthetic lambda$addAccount$0(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .param p1, "accountManagerFuture"    # Landroid/accounts/AccountManagerFuture;

    .line 127
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 130
    .local v0, "result":Landroid/os/Bundle;
    new-instance v1, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v1, v2, v3}, Lcom/afwsamples/testdpc/AddAccountActivity;->waitForForeground(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "result":Landroid/os/Bundle;
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "AddAccountActivity"

    const-string v2, "addAccount - failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    sget v1, Lcom/afwsamples/testdpc/R$string;->fail_to_add_account:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private synthetic lambda$addAccount$1(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .line 130
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/AddAccountActivity;->accountCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onNavigateNext$0(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 207
    sget v0, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 208
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "accountName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private synthetic lambda$waitForForeground$0(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .line 151
    const-wide/16 v0, 0xa

    sub-long v0, p2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->waitForForeground(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private restoreUserRestrictions()V
    .locals 3

    .line 182
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "AddAccountActivity"

    if-lt v0, v1, :cond_0

    .line 184
    const-string/jumbo v0, "skip restoring user restrictions on N or above"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 187
    :cond_0
    const-string v0, "restoring user restrictions"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDisallowModifyAccounts:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v2, "no_modify_accounts"

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 192
    :cond_1
    return-void
.end method

.method private waitForForeground(Ljava/lang/Runnable;J)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "timeout"
        }
    .end annotation

    .line 141
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 145
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 146
    .local v0, "isAppInForeground":Z
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;Ljava/lang/Runnable;J)V

    .line 150
    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :goto_0
    return-void

    .line 142
    .end local v0    # "isAppInForeground":Z
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timed out waiting for foreground."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mUserManager:Landroid/os/UserManager;

    .line 77
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 78
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 81
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/common/ThemeUtil;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    sget v0, Lcom/afwsamples/testdpc/R$layout;->activity_add_account:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity;->setContentView(I)V

    .line 84
    sget v0, Lcom/afwsamples/testdpc/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 85
    .local v0, "layout":Lcom/google/android/setupdesign/GlifLayout;
    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 86
    .local v1, "mixin":Lcom/google/android/setupcompat/template/FooterBarMixin;
    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/afwsamples/testdpc/R$string;->sud_next_button_label:I

    .line 88
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;)V

    .line 89
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 90
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$style;->SudGlifButton_Primary:I

    .line 91
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 94
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 95
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 96
    const-string v3, "nextActivityIntent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    .line 98
    :cond_0
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 6
    .param p1, "nextButton"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextButton"
        }
    .end annotation

    .line 195
    sget v0, Lcom/afwsamples/testdpc/R$id;->add_account_options:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 196
    .local v0, "addAccountOptions":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 197
    .local v1, "checkedRadioButtonId":I
    sget v2, Lcom/afwsamples/testdpc/R$id;->add_account:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 198
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/AddAccountActivity;->addAccount(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_0
    sget v2, Lcom/afwsamples/testdpc/R$id;->add_account_with_name:I

    if-ne v1, v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->add_account_dialog_title:I

    .line 202
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 203
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/view/View;)V

    .line 204
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 212
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$id;->add_account_skip:I

    if-ne v1, v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->finish()V

    goto :goto_1

    .line 212
    :cond_3
    :goto_0
    nop

    .line 218
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    invoke-direct {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->restoreUserRestrictions()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->disableUserRestrictions()V

    .line 104
    return-void
.end method

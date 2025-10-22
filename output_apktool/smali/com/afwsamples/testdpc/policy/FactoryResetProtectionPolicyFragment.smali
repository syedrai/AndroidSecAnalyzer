.class public Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;
.super Landroid/app/Fragment;
.source "FactoryResetProtectionPolicyFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;
    }
.end annotation


# static fields
.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final GOOGLE_ACCOUNT_ID_LENGTH:I = 0x15

.field private static final GOOGLE_ACCOUNT_ID_PREFIX_LENGTH:I = 0x1


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnabled:Z

.field private mFrpEnabledSpinner:Landroid/widget/Spinner;


# direct methods
.method public static synthetic $r8$lambda$OreJbVj-CT6d3v0yMyKTm4O1A4w(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->lambda$createAddAccountDialog$0(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YyxM54ZAAMdgz4IarG7XPUyHd88(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->lambda$createAddAccountDialog$1(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccounts(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccounts:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccounts:Ljava/util/List;

    return-void
.end method

.method private isValidAccountId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    .line 233
    return v1

    .line 238
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$ExternalSyntheticBackport3;->m(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private synthetic lambda$createAddAccountDialog$0(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "input"    # Landroid/widget/EditText;
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 185
    nop

    .line 186
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$ExternalSyntheticLambda6;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method private synthetic lambda$createAddAccountDialog$1(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/app/AlertDialog;
    .param p3, "okButtonView"    # Landroid/view/View;

    .line 189
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "item":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->isValidAccountId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    sget v1, Lcom/afwsamples/testdpc/R$string;->fail_to_add_account:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->showToast(I)V

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->add(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    return-void
.end method

.method private refreshUi()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->clear()V

    .line 112
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v0

    .line 116
    .local v0, "mFrpPolicy":Landroid/app/admin/FactoryResetProtectionPolicy;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v0}, Landroid/app/admin/FactoryResetProtectionPolicy;->getFactoryResetProtectionAccounts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->addAll(Ljava/util/Collection;)V

    .line 118
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    .line 119
    invoke-virtual {v0}, Landroid/app/admin/FactoryResetProtectionPolicy;->isFactoryResetProtectionEnabled()Z

    move-result v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 121
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "stringResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringResId"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    return-void
.end method


# virtual methods
.method public createAddAccountDialog()V
    .locals 5

    .line 172
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 175
    .local v1, "input":Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/afwsamples/testdpc/R$string;->add_account:I

    .line 177
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$string;->factory_reset_protection_policy_account_id_msg:I

    .line 178
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 179
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 180
    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 181
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 183
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2, v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 197
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 154
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->add_account_button:I

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->createAddAccountDialog()V

    goto :goto_0

    .line 156
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->clear_frp_button:I

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 158
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->refreshUi()V

    .line 159
    sget v1, Lcom/afwsamples/testdpc/R$string;->cleared_factory_reset_protection_policy:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->showToast(I)V

    goto :goto_0

    .line 160
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->save_frp_button:I

    if-ne v0, v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    new-instance v3, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;

    invoke-direct {v3}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;-><init>()V

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccounts:Ljava/util/List;

    .line 164
    invoke-virtual {v3, v4}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->setFactoryResetProtectionAccounts(Ljava/util/List;)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mEnabled:Z

    .line 165
    invoke-virtual {v3, v4}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->setFactoryResetProtectionEnabled(Z)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->build()Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v3

    .line 161
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 167
    sget v1, Lcom/afwsamples/testdpc/R$string;->saved_factory_reset_protection_policy:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->showToast(I)V

    .line 169
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
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

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 74
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->factory_reset_protection_policy:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 77
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
            0x10,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 83
    sget v0, Lcom/afwsamples/testdpc/R$layout;->factory_reset_protection_policy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->frp_accounts:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 86
    .local v1, "frpAccounts":Landroid/widget/ListView;
    new-instance v2, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    .line 87
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    sget v2, Lcom/afwsamples/testdpc/R$id;->add_account_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    .local v2, "addAccountButton":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v3, Lcom/afwsamples/testdpc/R$id;->clear_frp_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 92
    .local v3, "clearButton":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v4, Lcom/afwsamples/testdpc/R$id;->save_frp_button:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 94
    .local v4, "saveButton":Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v5, Lcom/afwsamples/testdpc/R$id;->frp_enabled:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    .line 97
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 98
    nop

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$array;->factory_reset_protection_policy_enabled_choices:I

    .line 99
    const v7, 0x1090008

    invoke-static {v5, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 103
    .local v5, "enabledAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 104
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->refreshUi()V

    .line 107
    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "pos",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 202
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->frp_enabled:I

    if-ne v0, v1, :cond_0

    .line 203
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mEnabled:Z

    goto :goto_0

    .line 205
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mEnabled:Z

    .line 206
    nop

    .line 212
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 217
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

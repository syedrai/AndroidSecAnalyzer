.class public Lcom/afwsamples/testdpc/common/LaunchIntentUtil;
.super Ljava/lang/Object;
.source "LaunchIntentUtil.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final EXTRA_AFFILIATION_ID:Ljava/lang/String; = "affiliation_id"

.field private static final EXTRA_IS_SETUP_WIZARD:Ljava/lang/String; = "is_setup_wizard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 71
    if-eqz p0, :cond_0

    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getAddedAccountName(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .locals 2
    .param p0, "persistableBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "persistableBundle"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "account_name"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isCosuLaunch(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "extras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_0

    const-string v0, "cosu-demo-config-location"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSynchronousAuthLaunch(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "launchIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "launchIntent"
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_setup_wizard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0
.end method

.method public static isSynchronousAuthLaunch(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "extras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 63
    if-eqz p0, :cond_0

    const-string v0, "is_setup_wizard"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static prepareDeviceAdminExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 4
    .param p0, "launchIntent"    # Landroid/content/Intent;
    .param p1, "newBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "launchIntent",
            "newBundle"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    const-string v1, "is_setup_wizard"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    .local v0, "isSetupWizard":Z
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v1

    .line 91
    .local v1, "addedAccount":Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 92
    const-string v2, "account_name"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0    # "isSetupWizard":Z
    .end local v1    # "addedAccount":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

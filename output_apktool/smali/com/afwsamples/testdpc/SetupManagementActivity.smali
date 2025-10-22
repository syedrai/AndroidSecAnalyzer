.class public Lcom/afwsamples/testdpc/SetupManagementActivity;
.super Landroid/app/Activity;
.source "SetupManagementActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
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

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/common/ThemeUtil;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    sget v0, Lcom/afwsamples/testdpc/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/SetupManagementActivity;->setContentView(I)V

    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$id;->container:I

    new-instance v2, Lcom/afwsamples/testdpc/SetupManagementFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;-><init>()V

    .line 21
    const-string v3, "SetupManagementFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 24
    :cond_0
    return-void
.end method

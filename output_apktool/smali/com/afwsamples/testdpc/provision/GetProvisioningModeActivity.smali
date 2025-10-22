.class public Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;
.super Landroid/app/Activity;
.source "GetProvisioningModeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$LS1ICgPRpD5LeWdsg3sQte1vWzE(Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->onDoButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zbnm0etqM9EGxTIRFbiRaQJ5UMA(Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->onPoButtonClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private containsDoOption(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowedProvisioningModes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 92
    .local p1, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsPoOption(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowedProvisioningModes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 96
    .local p1, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 96
    :goto_1
    return v0
.end method

.method private finishWithIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->finish()V

    .line 138
    return-void
.end method

.method private getAllowedProvisioningModes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    nop

    .line 82
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.PROVISIONING_ALLOWED_PROVISIONING_MODES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 85
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    return-object v0
.end method

.method private hideAllOptions(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 101
    sget v0, Lcom/afwsamples/testdpc/R$id;->po_option:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    sget v0, Lcom/afwsamples/testdpc/R$id;->do_option:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method

.method private hideDivider(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 106
    sget v0, Lcom/afwsamples/testdpc/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method private onDoButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.PROVISIONING_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->finishWithIntent(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method private onPoButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.PROVISIONING_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->finishWithIntent(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private showDivider(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 120
    sget v0, Lcom/afwsamples/testdpc/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    return-void
.end method

.method private showDoOption(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 115
    sget v0, Lcom/afwsamples/testdpc/R$id;->do_option:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v0, Lcom/afwsamples/testdpc/R$id;->do_selection_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private showPoOption(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 110
    sget v0, Lcom/afwsamples/testdpc/R$id;->po_option:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    sget v0, Lcom/afwsamples/testdpc/R$id;->po_selection_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private showRelevantProvisioningOptions(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->hideAllOptions(Landroid/view/ViewGroup;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->hideDivider(Landroid/view/ViewGroup;)V

    .line 68
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->getAllowedProvisioningModes()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->containsDoOption(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showDoOption(Landroid/view/ViewGroup;)V

    .line 72
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->containsPoOption(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->containsDoOption(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showDivider(Landroid/view/ViewGroup;)V

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showPoOption(Landroid/view/ViewGroup;)V

    .line 78
    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->setResult(I)V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icicle"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/afwsamples/testdpc/provision/ProvisioningUtil;->isAutoProvisioningDeviceOwnerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Automatically provisioning device owner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->onDoButtonClick(Landroid/view/View;)V

    .line 54
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$layout;->activity_get_provisioning_mode:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->setContentView(I)V

    .line 55
    sget v0, Lcom/afwsamples/testdpc/R$id;->dpc_login:I

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showRelevantProvisioningOptions(Landroid/view/ViewGroup;)V

    .line 57
    return-void
.end method

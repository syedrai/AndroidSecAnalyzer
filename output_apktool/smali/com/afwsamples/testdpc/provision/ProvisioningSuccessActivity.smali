.class public Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;
.super Landroid/app/Activity;
.source "ProvisioningSuccessActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisioningSuccess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icicle"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "task":Lcom/afwsamples/testdpc/provision/PostProvisioningTask;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->performPostProvisioningOperations(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->finish()V

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->getPostProvisioningLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    :cond_1
    const-string v2, "ProvisioningSuccess"

    const-string v3, "ProvisioningSuccessActivity.onCreate() invoked, but ownership not assigned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget v2, Lcom/afwsamples/testdpc/R$string;->device_admin_receiver_failure:I

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->finish()V

    .line 51
    return-void
.end method

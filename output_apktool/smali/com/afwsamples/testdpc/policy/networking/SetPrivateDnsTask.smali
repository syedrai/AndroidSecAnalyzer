.class final Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;
.super Landroid/os/AsyncTask;
.source "SetPrivateDnsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Networking"


# instance fields
.field private final mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mMode:I

.field private final mResolver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;ILjava/lang/String;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V
    .locals 0
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "mode"    # I
    .param p4, "resolver"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dpm",
            "component",
            "mode",
            "resolver",
            "callback"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 44
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mComponent:Landroid/content/ComponentName;

    .line 45
    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    .line 46
    iput p3, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mMode:I

    .line 47
    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mResolver:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 54
    :try_start_0
    iget v0, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mResolver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setGlobalPrivateDnsModeSpecifiedHost(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, "result":I
    goto :goto_0

    .line 59
    .end local v0    # "result":I
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setGlobalPrivateDnsModeOpportunistic(Landroid/content/ComponentName;)I

    move-result v0

    .line 60
    .restart local v0    # "result":I
    nop

    .line 64
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    :pswitch_2
    const-string v1, "General failure to set the Private DNS mode"

    return-object v1

    .line 70
    :pswitch_3
    const-string v1, "Provided host doesn\'t serve DNS-over-TLS"

    return-object v1

    .line 66
    :pswitch_4
    const/4 v1, 0x0

    return-object v1

    .line 72
    :goto_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error setting private dns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    .end local v0    # "result":I
    :goto_2
    iget v1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid private dns mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "params":[Ljava/lang/Void;
    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    const-string v1, "Networking"

    const-string v2, "Failed to invoke, cause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    sget v2, Lcom/afwsamples/testdpc/R$string;->setting_private_dns_succeess:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    sget v2, Lcom/afwsamples/testdpc/R$string;->setting_private_dns_failure:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void
.end method

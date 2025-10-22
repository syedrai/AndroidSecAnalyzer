.class Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "EsimControlFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/EsimControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/EsimControlFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.afwsamples.testdpc.esim_download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    nop

    .line 91
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "detailedCode":I
    nop

    .line 93
    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, "errorCode":I
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->getResultCode()I

    move-result v3

    .line 96
    .local v3, "resultCode":I
    invoke-static {}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    .line 99
    invoke-static {v5, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$mgetResultText(Lcom/afwsamples/testdpc/policy/EsimControlFragment;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download result: resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " detailedCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errorCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-static {v5, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$mgetResultText(Lcom/afwsamples/testdpc/policy/EsimControlFragment;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Ljava/lang/String;I)V

    .line 107
    if-ne v3, v6, :cond_1

    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$fgetmEuiccManager(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)Landroid/telephony/euicc/EuiccManager;

    move-result-object v4

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    .line 110
    invoke-virtual {v5}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    .line 114
    invoke-virtual {v6}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    const/high16 v8, 0x3000000

    invoke-static {v6, v1, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    invoke-virtual {v4, v5, v3, p2, v1}, Landroid/telephony/euicc/EuiccManager;->startResolutionActivity(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to start resolution activity"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$fgetmDownloadESIMReceiver(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

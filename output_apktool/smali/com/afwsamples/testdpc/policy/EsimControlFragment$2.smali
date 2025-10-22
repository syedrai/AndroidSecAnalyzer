.class Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;
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

    .line 129
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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

    .line 132
    const-string v0, "com.afwsamples.testdpc.esim_delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    nop

    .line 136
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "detailedCode":I
    invoke-static {}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    .line 140
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->getResultCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$mgetResultText(Lcom/afwsamples/testdpc/policy/EsimControlFragment;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete result: resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detailedCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->getResultCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$mgetResultText(Lcom/afwsamples/testdpc/policy/EsimControlFragment;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/policy/EsimControlFragment;Ljava/lang/String;I)V

    .line 145
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/EsimControlFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/EsimControlFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/EsimControlFragment;->-$$Nest$fgetmDeleteESIMReceiver(Lcom/afwsamples/testdpc/policy/EsimControlFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

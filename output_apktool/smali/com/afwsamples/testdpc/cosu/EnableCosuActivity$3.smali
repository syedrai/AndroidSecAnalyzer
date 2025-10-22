.class Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "EnableCosuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
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

    .line 275
    const-string v0, "com.afwsamples.testdpc.INSTALL_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    nop

    .line 280
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "result":I
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "CosuSetup"

    packed-switch v0, :pswitch_data_0

    .line 303
    const-string v3, "Install failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$mfinishWithFailure(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    .line 305
    return-void

    .line 297
    :pswitch_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmHandler(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmHandler(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;

    move-result-object v3

    .line 298
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 297
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    nop

    .line 308
    return-void

    .line 289
    :pswitch_1
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 291
    .local v3, "extraIntent":Landroid/content/Intent;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install requires user action with intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$mfinishWithFailure(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    .line 293
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

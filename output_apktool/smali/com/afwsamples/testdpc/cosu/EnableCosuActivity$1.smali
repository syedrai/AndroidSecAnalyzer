.class Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;
.super Landroid/os/Handler;
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

    .line 209
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfig(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->onInstallComplete(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfig(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->areAllInstallsFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$mstartCosuMode(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    goto/16 :goto_1

    .line 232
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 233
    .local v0, "id":J
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfigDownloadId(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "CosuSetup"

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v0, v2

    if-nez v7, :cond_0

    .line 234
    const-string v2, "Time out during download of config file"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmDownloadManager(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/app/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfigDownloadId(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-array v6, v6, [J

    aput-wide v3, v6, v5

    invoke-virtual {v2, v6}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmDownloadManager(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/app/DownloadManager;

    move-result-object v2

    new-array v3, v6, [J

    aput-wide v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time out during app download with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$mfinishWithFailure(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    .line 242
    .end local v0    # "id":J
    goto :goto_1

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfigDownloadId(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$monConfigFileDownloaded(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    .line 217
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfigDownloadId(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfig(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->onDownloadComplete(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 220
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->removeMessages(ILjava/lang/Object;)V

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v1}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$fgetmConfig(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->areAllInstallsFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v1}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->-$$Nest$mstartCosuMode(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    .line 228
    .end local v0    # "id":Ljava/lang/Long;
    :cond_3
    nop

    .line 253
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

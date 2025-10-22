.class public Lcom/afwsamples/testdpc/DelegatedAdminReceiver;
.super Landroid/app/admin/DelegatedAdminReceiver;
.source "DelegatedAdminReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DelegatedAdminReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/admin/DelegatedAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "uid",
            "uri",
            "alias"
        }
    .end annotation

    .line 35
    invoke-static {p1, p3}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onChoosePrivateKeyAlias(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "batchToken",
            "networkLogsCount"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p4, p5}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/ComponentName;JI)V

    .line 42
    return-void
.end method

.method public onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
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

    .line 47
    const-string v0, "DelegatedAdminReceiver"

    const-string v1, "onSecurityLogsAvailable() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget v0, Lcom/afwsamples/testdpc/R$string;->on_security_logs_available:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method

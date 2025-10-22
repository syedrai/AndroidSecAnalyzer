.class public Lcom/afwsamples/testdpc/common/PackageInstallationUtils;
.super Ljava/lang/Object;
.source "PackageInstallationUtils.java"


# static fields
.field public static final ACTION_INSTALL_COMPLETE:Ljava/lang/String; = "com.afwsamples.testdpc.INSTALL_COMPLETE"

.field private static final ACTION_UNINSTALL_COMPLETE:Ljava/lang/String; = "com.afwsamples.testdpc.UNINSTALL_COMPLETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInstallIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sessionId"
        }
    .end annotation

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.afwsamples.testdpc.INSTALL_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 67
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    return-object v1
.end method

.method private static createUninstallIntentSender(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IntentSender;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.afwsamples.testdpc.UNINSTALL_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 75
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    return-object v2
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "in",
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 38
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 40
    .local v1, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    .line 43
    .local v3, "sessionId":I
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v4

    .line 44
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-string v5, "TestDPC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v5

    .line 45
    .local v5, "out":Ljava/io/OutputStream;
    const/high16 v6, 0x10000

    new-array v6, v6, [B

    .line 47
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "c":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 48
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 52
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 54
    invoke-static {p0, v3}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->createInstallIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 55
    return v2
.end method

.method public static uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 60
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    invoke-static {p0, p1}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->createUninstallIntentSender(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 61
    return-void
.end method

.class public Lcom/afwsamples/testdpc/DeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdminReceiver.java"


# static fields
.field public static final ACTION_PASSWORD_REQUIREMENTS_CHANGED:Ljava/lang/String; = "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED"

.field private static final CHANGE_PASSWORD_NOTIFICATION_ID:I = 0x65

.field private static final FAILED_PASSWORD_LOG_FILE:Ljava/lang/String; = "failed_pw_attempts_timestamps.log"

.field private static final LOGS_DIR:Ljava/lang/String; = "logs"

.field private static final PASSWORD_FAILED_NOTIFICATION_ID:I = 0x66

.field private static final TAG:Ljava/lang/String; = "DeviceAdminReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method public static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 319
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isProfileOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getReceiverComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static getFailedPasswordAttempts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 478
    const-string v0, "Unable to close failed password attempts log file"

    const-string v1, "DeviceAdminReceiver"

    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 479
    .local v2, "logFile":Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    return-object v3

    .line 485
    :cond_0
    const/4 v4, 0x0

    .line 487
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 488
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 490
    .local v5, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 491
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 492
    new-instance v7, Ljava/util/Date;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    nop

    .line 501
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 504
    :goto_1
    goto :goto_2

    .line 502
    :catch_0
    move-exception v5

    .line 503
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 499
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 496
    :catch_1
    move-exception v5

    .line 497
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "Unable to read failed password attempts"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_2

    .line 501
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 508
    :cond_2
    :goto_2
    return-object v3

    .line 499
    :goto_3
    if-eqz v4, :cond_3

    .line 501
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 504
    goto :goto_4

    .line 502
    :catch_2
    move-exception v6

    .line 503
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v5
.end method

.method public static getReceiverComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 331
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/DeviceAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "titleResId"    # I
    .param p4, "messageResId"    # I
    .param p5, "notificationId"    # I
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
            "userHandle",
            "titleResId",
            "messageResId",
            "notificationId"
        }
    .end annotation

    .line 646
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 647
    .local v0, "userManager":Landroid/os/UserManager;
    nop

    .line 648
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, p4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "message":Ljava/lang/String;
    const-string v2, "DeviceAdminReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {p1, p3, v1, p5}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 651
    return-void
.end method

.method private static isUsingUnifiedPassword(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 579
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 580
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 582
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 583
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static logFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 473
    const-string v0, "logs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 474
    .local v0, "parent":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "failed_pw_attempts_timestamps.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private onDeviceOwnerChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 612
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onDeviceOwnerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget v0, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_device_owner_changed_title:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_device_owner_changed_title:I

    .line 616
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 613
    const/16 v2, 0x9

    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 618
    return-void
.end method

.method private onProfileOwnerChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 603
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onProfileOwnerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sget v0, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_profile_owner_changed_title:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_profile_owner_changed_title:I

    .line 607
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 609
    return-void
.end method

.method private static saveFailedPasswordAttempts(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attempts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    .local p1, "attempts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 515
    .local v0, "logFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 519
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 520
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 522
    .local v2, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 523
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 525
    .end local v4    # "date":Ljava/util/Date;
    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 528
    return-void
.end method

.method public static sendPasswordRequirementsChanged(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "changedIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    return-void
.end method

.method private showToast(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    .line 654
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "message"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showToast():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceAdminReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 660
    return-void
.end method

.method private static updatePasswordConstraintNotification(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 531
    nop

    .line 532
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 533
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 535
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    return-void

    .line 541
    :cond_0
    nop

    .line 542
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 544
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v3, "problems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    sget v4, Lcom/afwsamples/testdpc/R$string;->password_not_compliant_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_1
    const-string v4, "no_unified_password"

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 551
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->isUsingUnifiedPassword(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 552
    sget v4, Lcom/afwsamples/testdpc/R$string;->separate_challenge_required_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/16 v5, 0x65

    if-nez v4, :cond_4

    .line 556
    new-instance v4, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 557
    .local v4, "style":Landroidx/core/app/NotificationCompat$InboxStyle;
    sget v6, Lcom/afwsamples/testdpc/R$string;->set_new_password_notification_content:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 558
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 559
    .local v7, "problem":Ljava/lang/CharSequence;
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 560
    .end local v7    # "problem":Ljava/lang/CharSequence;
    goto :goto_0

    .line 561
    :cond_3
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/NotificationUtil;->getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 562
    .local v6, "warn":Landroidx/core/app/NotificationCompat$Builder;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    sget v8, Lcom/afwsamples/testdpc/R$drawable;->ic_launcher:I

    .line 563
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 564
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    const/4 v9, -0x1

    const/high16 v10, 0x4000000

    invoke-static {p0, v9, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 565
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 571
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 572
    .end local v4    # "style":Landroidx/core/app/NotificationCompat$InboxStyle;
    .end local v6    # "warn":Landroidx/core/app/NotificationCompat$Builder;
    goto :goto_1

    .line 573
    :cond_4
    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 575
    :goto_1
    return-void
.end method


# virtual methods
.method public onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "failureCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "failureCode"
        }
    .end annotation

    .line 220
    packed-switch p3, :pswitch_data_0

    .line 227
    sget v0, Lcom/afwsamples/testdpc/R$string;->bugreport_failure_failed_completing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "failureReason":Ljava/lang/String;
    goto :goto_0

    .line 222
    .end local v0    # "failureReason":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->bugreport_failure_file_no_longer_available:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "failureReason":Ljava/lang/String;
    nop

    .line 229
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bugreport failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceAdminReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget v1, Lcom/afwsamples/testdpc/R$string;->bugreport_title:I

    sget v2, Lcom/afwsamples/testdpc/R$string;->bugreport_failure_message:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 233
    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {p1, v1, v2, v3}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 235
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bugreportFileHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "intent",
            "bugreportFileHash"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bugreport shared, hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceAdminReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 166
    .local v5, "bugreportUri":Landroid/net/Uri;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bugreport URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v7

    .line 169
    .local v7, "result":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v2, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "bugreportFileHash":Ljava/lang/String;
    .local v4, "context":Landroid/content/Context;
    .local v6, "bugreportFileHash":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;-><init>(Lcom/afwsamples/testdpc/DeviceAdminReceiver;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 213
    invoke-virtual {v2, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method public onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
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

    .line 152
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "Bugreport sharing declined"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget v0, Lcom/afwsamples/testdpc/R$string;->bugreport_title:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->bugreport_sharing_declined:I

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 158
    return-void
.end method

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

    .line 309
    invoke-static {p1, p3}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onChoosePrivateKeyAlias(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
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

    .line 467
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 468
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 469
    .local v1, "serialNumber":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device admin enabled in user with serial number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceAdminReceiver"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 2
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

    .line 122
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onNetworkLogsAvailable() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    nop

    .line 124
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 123
    invoke-static {p1, v0, p3, p4, p5}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/ComponentName;JI)V

    .line 125
    return-void
.end method

.method public onOperationSafetyStateChanged(Landroid/content/Context;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reasonType"    # I
    .param p3, "safe"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "reasonType",
            "safe"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOperationSafetyStateChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceAdminReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz p3, :cond_0

    sget v0, Lcom/afwsamples/testdpc/R$string;->safe:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/afwsamples/testdpc/R$string;->unsafe:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "status":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 101
    sget v1, Lcom/afwsamples/testdpc/R$string;->unsafe_operation_reason_driving_undefined:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "reason":Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v1    # "reason":Ljava/lang/String;
    :pswitch_0
    sget v1, Lcom/afwsamples/testdpc/R$string;->unsafe_operation_reason_driving_distraction:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "reason":Ljava/lang/String;
    nop

    .line 103
    :goto_1
    sget v2, Lcom/afwsamples/testdpc/R$string;->safety_operations_change_message:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "message":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 455
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "user"
        }
    .end annotation

    .line 460
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->updatePasswordConstraintNotification(Landroid/content/Context;)V

    .line 463
    :cond_0
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 338
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "user"
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    nop

    .line 348
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 350
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 351
    .local v1, "timeNow":J
    nop

    .line 352
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 353
    .local v3, "timeAdminExpires":J
    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 355
    .local v5, "expiredBySelf":Z
    :goto_0
    sget v6, Lcom/afwsamples/testdpc/R$string;->password_expired_title:I

    .line 359
    if-eqz v5, :cond_2

    .line 360
    sget v7, Lcom/afwsamples/testdpc/R$string;->password_expired_by_self:I

    goto :goto_1

    .line 361
    :cond_2
    sget v7, Lcom/afwsamples/testdpc/R$string;->password_expired_by_others:I

    .line 358
    :goto_1
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 355
    const/4 v8, 0x2

    invoke-static {p1, v6, v7, v8}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 363
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 369
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "user"
        }
    .end annotation

    .line 374
    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    nop

    .line 379
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 385
    .local v3, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v4

    .line 386
    .local v4, "attempts":I
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v5

    .line 388
    .local v5, "maxAttempts":I
    nop

    .line 390
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/afwsamples/testdpc/R$plurals;->password_failed_attempts_title:I

    .line 391
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v0, v6, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "title":Ljava/lang/String;
    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getFailedPasswordAttempts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 394
    .local v7, "previousFailedAttempts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v9, v0

    .line 395
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 398
    :try_start_0
    invoke-static {v1, v7}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->saveFailedPasswordAttempts(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "DeviceAdminReceiver"

    const-string v12, "Unable to save failed password attempts"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v5, :cond_1

    .line 405
    sget v0, Lcom/afwsamples/testdpc/R$string;->password_failed_no_limit_set:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 408
    :cond_1
    nop

    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v11, Lcom/afwsamples/testdpc/R$plurals;->password_failed_attempts_content:I

    .line 409
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v10

    .line 408
    invoke-virtual {v0, v11, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    nop

    .line 411
    .local v0, "content":Ljava/lang/String;
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/NotificationUtil;->getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 412
    .local v8, "warn":Landroidx/core/app/NotificationCompat$Builder;
    sget v10, Lcom/afwsamples/testdpc/R$drawable;->ic_launcher:I

    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 413
    invoke-virtual {v10, v6}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 414
    invoke-virtual {v10, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 415
    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const/4 v12, -0x1

    const/high16 v13, 0x4000000

    invoke-static {v1, v12, v11, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 416
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 423
    new-instance v10, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v10}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 424
    .local v10, "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    invoke-virtual {v10, v6}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 426
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v11

    .line 427
    .local v11, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Date;

    .line 428
    .local v13, "d":Ljava/util/Date;
    invoke-virtual {v11, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 429
    .end local v13    # "d":Ljava/util/Date;
    goto :goto_2

    .line 430
    :cond_2
    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 432
    nop

    .line 433
    const-string v12, "notification"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 434
    .local v12, "nm":Landroid/app/NotificationManager;
    const/16 v13, 0x66

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 435
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 441
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "user"
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 449
    :cond_0
    return-void
.end method

.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
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

    .line 129
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;

    invoke-direct {v0, p1}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "task":Lcom/afwsamples/testdpc/provision/PostProvisioningTask;
    invoke-virtual {v0, p2}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->performPostProvisioningOperations(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    return-void

    .line 138
    :cond_1
    invoke-virtual {v0, p2}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->getPostProvisioningLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_2
    const-string v2, "DeviceAdminReceiver"

    const-string v3, "DeviceAdminReceiver.onProvisioningComplete() invoked, but ownership not assigned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget v2, Lcom/afwsamples/testdpc/R$string;->device_admin_receiver_failure:I

    invoke-direct {p0, p1, v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;I)V

    .line 147
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "android.app.action.PROFILE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 82
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onDeviceOwnerChanged(Landroid/content/Context;)V

    .line 83
    goto :goto_2

    .line 79
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onProfileOwnerChanged(Landroid/content/Context;)V

    .line 80
    goto :goto_2

    .line 76
    :pswitch_2
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->updatePasswordConstraintNotification(Landroid/content/Context;)V

    .line 77
    nop

    .line 88
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bf984ba -> :sswitch_3
        -0x54445da0 -> :sswitch_2
        0x161995ab -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 110
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onSecurityLogsAvailable() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget v0, Lcom/afwsamples/testdpc/R$string;->on_security_logs_available:I

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;I)V

    .line 112
    return-void
.end method

.method public onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "receivedTime"
        }
    .end annotation

    .line 296
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    .line 297
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "sdf":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "timeString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System update received at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    .end local v0    # "sdf":Ljava/text/DateFormat;
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onTransferAffiliatedProfileOwnershipComplete(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "user"
        }
    .end annotation

    .line 632
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onTransferAffiliatedProfileOwnershipComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    sget v0, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_affiliated_complete_title:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_affiliated_complete_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 636
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 633
    const/16 v2, 0xb

    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 638
    return-void
.end method

.method public onTransferOwnershipComplete(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bundle"
        }
    .end annotation

    .line 622
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onTransferOwnershipComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget v0, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_complete_title:I

    sget v1, Lcom/afwsamples/testdpc/R$string;->transfer_ownership_complete_message:I

    .line 626
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 623
    const/16 v2, 0xa

    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 628
    return-void
.end method

.method public onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "newUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "newUser"
        }
    .end annotation

    .line 240
    sget v3, Lcom/afwsamples/testdpc/R$string;->on_user_added_title:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->on_user_added_message:I

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "newUser":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v2, "newUser":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 246
    return-void
.end method

.method public onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "removedUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "removedUser"
        }
    .end annotation

    .line 251
    sget v3, Lcom/afwsamples/testdpc/R$string;->on_user_removed_title:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->on_user_removed_message:I

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "removedUser":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v2, "removedUser":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 257
    return-void
.end method

.method public onUserStarted(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "startedUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "startedUser"
        }
    .end annotation

    .line 262
    sget v3, Lcom/afwsamples/testdpc/R$string;->on_user_started_title:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->on_user_started_message:I

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "startedUser":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v2, "startedUser":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 268
    return-void
.end method

.method public onUserStopped(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "stoppedUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "stoppedUser"
        }
    .end annotation

    .line 273
    sget v3, Lcom/afwsamples/testdpc/R$string;->on_user_stopped_title:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->on_user_stopped_message:I

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "stoppedUser":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v2, "stoppedUser":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 279
    return-void
.end method

.method public onUserSwitched(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "switchedUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "switchedUser"
        }
    .end annotation

    .line 284
    sget v3, Lcom/afwsamples/testdpc/R$string;->on_user_switched_title:I

    sget v4, Lcom/afwsamples/testdpc/R$string;->on_user_switched_message:I

    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "switchedUser":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v2, "switchedUser":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 290
    return-void
.end method

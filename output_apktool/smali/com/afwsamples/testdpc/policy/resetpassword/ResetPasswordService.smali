.class public Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;
.super Landroid/app/Service;
.source "ResetPasswordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$LockedBootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_PASSWORD:Ljava/lang/String; = "com.afwsamples.testdpc.RESET_PASSWORD"

.field private static final NOTIFICATION_CHANNEL:Ljava/lang/String; = "reset-password-notification"

.field private static final NOTIFICATION_FOREGROUND:I = 0x3

.field private static final NOTIFICATION_RESET_RESULT:I = 0x2

.field private static final NOTIFICATION_TAP_TO_RESET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResetPasswordService"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mNm:Landroid/app/NotificationManager;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetreceiver(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissNotification(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->dismissNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoResetPassword(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->doResetPassword()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;-><init>(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 117
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/afwsamples/testdpc/R$string;->app_name:I

    .line 120
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "reset-password-notification"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 122
    .local v0, "mChannel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 123
    return-void
.end method

.method private dismissNotification()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 203
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 204
    return-void
.end method

.method private doResetPassword()V
    .locals 9

    .line 160
    const-string v0, "1234"

    .line 161
    .local v0, "password":Ljava/lang/String;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getActiveResetPasswordToken()[B

    move-result-object v1

    .line 163
    .local v1, "token":[B
    const/4 v2, 0x0

    const-string v3, "1234"

    if-eqz v1, :cond_0

    .line 164
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 166
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    .line 165
    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v4

    .local v4, "result":Z
    goto :goto_0

    .line 168
    .end local v4    # "result":Z
    :cond_0
    const-string v4, "ResetPasswordService"

    const-string v5, "Cannot reset password without token"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v4, 0x0

    .line 171
    .restart local v4    # "result":Z
    :goto_0
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/afwsamples/testdpc/R$string;->app_name:I

    .line 173
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$drawable;->ic_launcher:I

    .line 174
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 175
    const-string v6, "reset-password-notification"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 176
    .local v5, "builder":Landroid/app/Notification$Builder;
    if-eqz v4, :cond_1

    .line 177
    sget v6, Lcom/afwsamples/testdpc/R$string;->reset_password_with_token_succeed:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-virtual {p0, v6, v8}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 178
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 180
    :cond_1
    sget v2, Lcom/afwsamples/testdpc/R$string;->reset_password_with_token_failed:I

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 182
    :goto_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v3, 0x2

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 183
    return-void
.end method

.method private getActiveResetPasswordToken()[B
    .locals 4

    .line 148
    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B

    move-result-object v0

    .line 149
    .local v0, "token":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    return-object v1

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    const-string v2, "ResetPasswordService"

    const-string v3, "Token exists but is not activated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 156
    :cond_1
    return-object v0
.end method

.method private showNotification()V
    .locals 4

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.afwsamples.testdpc.RESET_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 189
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/afwsamples/testdpc/R$string;->app_name:I

    .line 191
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$string;->reset_password_notification:I

    .line 192
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/afwsamples/testdpc/R$drawable;->ic_launcher:I

    .line 195
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 196
    const-string v2, "reset-password-notification"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 198
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 199
    return-void
.end method

.method private startForeground()V
    .locals 4

    .line 126
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/afwsamples/testdpc/R$string;->app_name:I

    .line 128
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->reset_password_foreground_notification:I

    .line 129
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$drawable;->ic_launcher:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 131
    const-string v1, "reset-password-notification"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 133
    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x3

    if-ge v1, v2, :cond_0

    .line 134
    invoke-virtual {p0, v3, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 136
    :cond_0
    const/16 v1, 0x400

    invoke-virtual {p0, v3, v0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->startForeground(ILandroid/app/Notification;I)V

    .line 139
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
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

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 89
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->createNotificationChannel()V

    .line 95
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->startForeground()V

    .line 97
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getActiveResetPasswordToken()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v3, "com.afwsamples.testdpc.RESET_PASSWORD"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_1

    .line 107
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->showNotification()V

    .line 113
    return v2

    .line 99
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->stopSelf()V

    .line 100
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 101
    return v1
.end method

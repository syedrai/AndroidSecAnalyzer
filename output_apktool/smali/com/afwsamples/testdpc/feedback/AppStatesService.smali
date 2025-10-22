.class public Lcom/afwsamples/testdpc/feedback/AppStatesService;
.super Landroidx/enterprise/feedback/KeyedAppStatesService;
.source "AppStatesService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "KeyedAppStates"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Keyed App States"

.field static final TAG:Ljava/lang/String; = "KeyedAppStates"


# instance fields
.field private idMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppStatesService;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->nextNotificationId:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 109
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 110
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Keyed App States"

    const/4 v2, 0x3

    const-string v3, "KeyedAppStates"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 112
    .local v0, "channel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 113
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 115
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private getIdForState(Landroidx/enterprise/feedback/ReceivedKeyedAppState;)I
    .locals 4
    .param p1, "state"    # Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    iget v2, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->nextNotificationId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->nextNotificationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private showNotification(Landroidx/enterprise/feedback/ReceivedKeyedAppState;Z)V
    .locals 12
    .param p1, "state"    # Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .param p2, "requestSync"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "requestSync"
        }
    .end annotation

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getTimestamp()J

    move-result-wide v0

    .line 71
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getData()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string v6, ""

    if-eqz p2, :cond_0

    const-string v7, " - SYNC REQUESTED"

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "logMessage":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v5

    const/4 v7, 0x2

    const-string v8, "KeyedAppStates"

    if-ne v5, v7, :cond_1

    .line 82
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :cond_1
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 89
    const-string v5, "ERROR"

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    const-string v5, "INFO"

    goto :goto_2

    :cond_3
    const-string v5, "UNKNOWN"

    :goto_2
    nop

    .line 92
    .local v5, "severity":Ljava/lang/String;
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v7, p0, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v8, Lcom/afwsamples/testdpc/R$drawable;->arrow_down:I

    .line 94
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 95
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getTimestamp()J

    move-result-wide v7

    .line 99
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getData()Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 103
    if-eqz p2, :cond_4

    const-string v6, "\nSYNC REQUESTED"

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 104
    .local v1, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    .line 105
    .local v2, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->getIdForState(Landroidx/enterprise/feedback/ReceivedKeyedAppState;)I

    move-result v3

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onReceive(Ljava/util/Collection;Z)V
    .locals 3
    .param p2, "requestSync"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "states",
            "requestSync"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    nop

    .line 53
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->app_feedback_notifications:I

    .line 54
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    .local v0, "shouldNotify":Z
    if-nez v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->createNotificationChannel()V

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    .line 63
    .local v2, "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    invoke-direct {p0, v2, p2}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->showNotification(Landroidx/enterprise/feedback/ReceivedKeyedAppState;Z)V

    .line 64
    .end local v2    # "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.class Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationChannelGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createNotificationChannelGroup(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 223
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-direct {v0, p0, p1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static getChannels(Landroid/app/NotificationChannelGroup;)Ljava/util/List;
    .locals 1
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationChannelGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 240
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 227
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getName(Landroid/app/NotificationChannelGroup;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "notificationChannelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 231
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

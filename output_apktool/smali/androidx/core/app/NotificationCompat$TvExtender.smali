.class public final Landroidx/core/app/NotificationCompat$TvExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvExtender"
.end annotation


# static fields
.field static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field static final EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field static final EXTRA_SUPPRESS_SHOW_OVER_APPS:Ljava/lang/String; = "suppressShowOverApps"

.field static final EXTRA_TV_EXTENDER:Ljava/lang/String; = "android.tv.EXTENSIONS"

.field private static final FLAG_AVAILABLE_ON_TV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvExtender"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mSuppressShowOverApps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8142
    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    .line 8143
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notif"    # Landroid/app/Notification;

    .line 8150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 8155
    return-void

    .line 8158
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 8159
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.tv.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 8160
    .local v0, "tvBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_2

    .line 8161
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    .line 8162
    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    .line 8163
    const-string/jumbo v1, "suppressShowOverApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    .line 8164
    const-string v1, "content_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 8165
    const-string v1, "delete_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8167
    :cond_2
    return-void
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 8181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 8182
    return-object p1

    .line 8185
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8187
    .local v0, "tvExtensions":Landroid/os/Bundle;
    const-string v1, "flags"

    iget v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8188
    const-string v1, "channel_id"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8189
    const-string/jumbo v1, "suppressShowOverApps"

    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8190
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 8191
    const-string v1, "content_intent"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8194
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 8195
    const-string v1, "delete_intent"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8199
    :cond_2
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.tv.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8200
    return-object p1
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 8228
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 8248
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 8268
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public isAvailableOnTv()Z
    .locals 2

    .line 8208
    iget v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSuppressShowOverApps()Z
    .locals 1

    .line 8285
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    return v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 8220
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    .line 8221
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 8237
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 8238
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 8257
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8258
    return-object p0
.end method

.method public setSuppressShowOverApps(Z)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "suppress"    # Z

    .line 8276
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    .line 8277
    return-object p0
.end method

.class public Landroid/support/v4/app/NotificationChannelGroupCompat;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;,
        Landroid/support/v4/app/NotificationChannelGroupCompat$Api28Impl;,
        Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation
.end field

.field mDescription:Ljava/lang/String;

.field final mId:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/NotificationChannelGroup;)V
    .locals 1
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationChannelGroup;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p2, "allChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-static {p1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;->getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationChannelGroupCompat;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;->getName(Landroid/app/NotificationChannelGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 117
    invoke-static {p1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api28Impl;->getDescription(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    .line 120
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 121
    invoke-static {p1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api28Impl;->isBlocked(Landroid/app/NotificationChannelGroup;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mBlocked:Z

    .line 122
    invoke-static {p1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;->getChannels(Landroid/app/NotificationChannelGroup;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationChannelGroupCompat;->getChannelsCompat(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v4/app/NotificationChannelGroupCompat;->getChannelsCompat(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    .line 128
    :goto_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    .line 102
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private getChannelsCompat(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 132
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "channelsCompat":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelCompat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 134
    .local v2, "channel":Landroid/app/NotificationChannel;
    iget-object v3, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;->getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance v3, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v3, v2}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;
    .locals 3

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api26Impl;->createNotificationChannelGroup(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 151
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 152
    iget-object v1, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Api28Impl;->setDescription(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V

    .line 154
    :cond_1
    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mBlocked:Z

    return v0
.end method

.method public toBuilder()Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;
    .locals 2

    .line 161
    new-instance v0, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;

    iget-object v1, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;->setDescription(Ljava/lang/String;)Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;

    move-result-object v0

    .line 161
    return-object v0
.end method

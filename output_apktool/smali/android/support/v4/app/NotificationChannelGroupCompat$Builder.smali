.class public Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationChannelGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationChannelGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mGroup:Landroid/support/v4/app/NotificationChannelGroupCompat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/support/v4/app/NotificationChannelGroupCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationChannelGroupCompat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroid/support/v4/app/NotificationChannelGroupCompat;

    .line 65
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/app/NotificationChannelGroupCompat;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroid/support/v4/app/NotificationChannelGroupCompat;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroid/support/v4/app/NotificationChannelGroupCompat;

    iput-object p1, v0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mDescription:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p0, Landroid/support/v4/app/NotificationChannelGroupCompat$Builder;->mGroup:Landroid/support/v4/app/NotificationChannelGroupCompat;

    iput-object p1, v0, Landroid/support/v4/app/NotificationChannelGroupCompat;->mName:Ljava/lang/CharSequence;

    .line 78
    return-object p0
.end method

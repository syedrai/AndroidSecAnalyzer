.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8497
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 8542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8543
    if-eqz p1, :cond_1

    .line 8546
    if-eqz p2, :cond_0

    .line 8549
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 8550
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 8551
    return-void

    .line 8547
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8544
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 8521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8525
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 8526
    return-void

    .line 8523
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires a non-null shortcut id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 8696
    if-eqz p2, :cond_0

    .line 8697
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    goto :goto_0

    .line 8699
    :cond_0
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    .line 8701
    :goto_0
    return-object p0
.end method


# virtual methods
.method public build()Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 11

    .line 8681
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8682
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8685
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8686
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8689
    :cond_3
    :goto_1
    new-instance v2, Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget v6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v7, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget v8, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    iget-object v9, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$1;)V

    .line 8691
    .local v2, "data":Landroidx/core/app/NotificationCompat$BubbleMetadata;
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->setFlags(I)V

    .line 8692
    return-object v2
.end method

.method public setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1
    .param p1, "shouldExpand"    # Z

    .line 8645
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 8646
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0
    .param p1, "deleteIntent"    # Landroid/app/PendingIntent;

    .line 8671
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8672
    return-object p0
.end method

.method public setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2
    .param p1, "height"    # I

    .line 8612
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 8613
    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 8614
    return-object p0
.end method

.method public setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1
    .param p1, "heightResId"    # I

    .line 8628
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 8629
    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 8630
    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 8589
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 8594
    if-eqz p1, :cond_0

    .line 8597
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 8598
    return-object p0

    .line 8595
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8590
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 8562
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 8567
    if-eqz p1, :cond_0

    .line 8570
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 8571
    return-object p0

    .line 8568
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8563
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1
    .param p1, "shouldSuppressNotif"    # Z

    .line 8662
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 8663
    return-object p0
.end method

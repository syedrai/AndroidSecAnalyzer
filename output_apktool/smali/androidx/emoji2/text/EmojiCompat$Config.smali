.class public abstract Landroidx/emoji2/text/EmojiCompat$Config;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# instance fields
.field mEmojiAsDefaultStyleExceptions:[I

.field mEmojiSpanIndicatorColor:I

.field mEmojiSpanIndicatorEnabled:Z

.field mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field mInitCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;",
            ">;"
        }
    .end annotation
.end field

.field mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field mReplaceAll:Z

.field mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field mUseEmojiAsDefaultStyle:Z


# direct methods
.method protected constructor <init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V
    .locals 1
    .param p1, "metadataLoader"    # Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    const v0, -0xff0100

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    .line 1379
    new-instance v0, Landroidx/emoji2/text/DefaultGlyphChecker;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultGlyphChecker;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 1388
    const-string v0, "metadataLoader cannot be null."

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 1390
    return-void
.end method


# virtual methods
.method protected final getMetadataRepoLoader()Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;
    .locals 1

    .line 1604
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    return-object v0
.end method

.method public registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1, "initCallback"    # Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 1401
    invoke-static {}, Landroidx/emoji2/text/ConcurrencyHelpers;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/EmojiCompat$Config;->registerInitCallback(Ljava/util/concurrent/Executor;Landroidx/emoji2/text/EmojiCompat$InitCallback;)Landroidx/emoji2/text/EmojiCompat$Config;

    .line 1402
    return-object p0
.end method

.method public registerInitCallback(Ljava/util/concurrent/Executor;Landroidx/emoji2/text/EmojiCompat$InitCallback;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "initCallback"    # Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 1415
    const-string v0, "initCallback cannot be null"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    .line 1420
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    new-instance v1, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;

    invoke-direct {v1, p1, p2}, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;-><init>(Ljava/util/concurrent/Executor;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1421
    return-object p0
.end method

.method public setEmojiSpanIndicatorColor(I)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .param p1, "color"    # I

    .line 1532
    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    .line 1533
    return-object p0
.end method

.method public setEmojiSpanIndicatorEnabled(Z)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .param p1, "emojiSpanIndicatorEnabled"    # Z

    .line 1521
    iput-boolean p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    .line 1522
    return-object p0
.end method

.method public setGlyphChecker(Landroidx/emoji2/text/EmojiCompat$GlyphChecker;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1, "glyphChecker"    # Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 1595
    const-string v0, "GlyphChecker cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 1597
    return-object p0
.end method

.method public setMetadataLoadStrategy(I)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .param p1, "strategy"    # I

    .line 1573
    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    .line 1574
    return-object p0
.end method

.method public setReplaceAll(Z)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .param p1, "replaceAll"    # Z

    .line 1457
    iput-boolean p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mReplaceAll:Z

    .line 1458
    return-object p0
.end method

.method public setSpanFactory(Landroidx/emoji2/text/EmojiCompat$SpanFactory;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 0
    .param p1, "factory"    # Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 1584
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 1585
    return-object p0
.end method

.method public setUseEmojiAsDefaultStyle(Z)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1, "useEmojiAsDefaultStyle"    # Z

    .line 1477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiCompat$Config;->setUseEmojiAsDefaultStyle(ZLjava/util/List;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object v0

    return-object v0
.end method

.method public setUseEmojiAsDefaultStyle(ZLjava/util/List;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 6
    .param p1, "useEmojiAsDefaultStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/emoji2/text/EmojiCompat$Config;"
        }
    .end annotation

    .line 1498
    .local p2, "emojiAsDefaultStyleExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-boolean p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    .line 1499
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1500
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    .line 1501
    const/4 v0, 0x0

    .line 1502
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1503
    .local v2, "exception":Ljava/lang/Integer;
    iget-object v3, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    .line 1504
    .end local v2    # "exception":Ljava/lang/Integer;
    move v0, v4

    goto :goto_0

    .line 1505
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1506
    .end local v0    # "i":I
    goto :goto_1

    .line 1507
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    .line 1509
    :goto_1
    return-object p0
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 4
    .param p1, "initCallback"    # Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 1432
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;>;"
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;

    .line 1436
    .local v2, "item":Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;
    iget-object v3, v2, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-ne v3, p1, :cond_0

    .line 1437
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    .end local v2    # "item":Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;
    :cond_0
    goto :goto_0

    .line 1440
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;

    .line 1441
    .restart local v2    # "item":Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;
    iget-object v3, p0, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1442
    .end local v2    # "item":Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;
    goto :goto_1

    .line 1444
    .end local v0    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;>;"
    :cond_2
    return-object p0
.end method

.class public Lcom/afwsamples/testdpc/search/PreferenceCrawler;
.super Ljava/lang/Object;
.source "PreferenceCrawler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCrawler_Timer"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PreferenceCrawler;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public doCrawl()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "PreferenceCrawler_Timer"

    const-string v2, "doCrawl"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, "logger":Landroid/util/TimingLogger;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v1, "indexablePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/search/IndexableFragments;->values()Ljava/util/List;

    move-result-object v2

    .line 25
    .local v2, "indexableFragments":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/BaseIndexableFragment;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;

    .line 26
    .local v4, "indexableFragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    iget-object v5, p0, Lcom/afwsamples/testdpc/search/PreferenceCrawler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->index(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget-object v5, v4, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 28
    .end local v4    # "indexableFragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    goto :goto_0

    .line 29
    :cond_0
    const-string v3, "Finish crawling"

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 31
    return-object v1
.end method

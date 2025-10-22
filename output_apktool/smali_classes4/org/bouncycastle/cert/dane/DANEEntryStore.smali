.class public Lorg/bouncycastle/cert/dane/DANEEntryStore;
.super Ljava/lang/Object;
.source "DANEEntryStore.java"

# interfaces
.implements Lorg/bouncycastle/util/Store;


# instance fields
.field private final entries:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .param p1, "entries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v0, "entryMap":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/dane/DANEEntry;

    .line 32
    .local v2, "entry":Lorg/bouncycastle/cert/dane/DANEEntry;
    invoke-virtual {v2}, Lorg/bouncycastle/cert/dane/DANEEntry;->getDomainName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v2    # "entry":Lorg/bouncycastle/cert/dane/DANEEntry;
    goto :goto_0

    .line 35
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cert/dane/DANEEntryStore;->entries:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Lorg/bouncycastle/util/Selector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    .line 48
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/cert/dane/DANEEntryStore;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "results":Ljava/util/List;
    iget-object v1, p0, Lorg/bouncycastle/cert/dane/DANEEntryStore;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "next":Ljava/lang/Object;
    invoke-interface {p1, v2}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2    # "next":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 64
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toCertificateStore()Lorg/bouncycastle/util/Store;
    .locals 5

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/dane/DANEEntryStore;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    .line 76
    .local v0, "col":Ljava/util/Collection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v1, "certColl":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cert/dane/DANEEntry;

    .line 82
    .local v3, "entry":Lorg/bouncycastle/cert/dane/DANEEntry;
    invoke-virtual {v3}, Lorg/bouncycastle/cert/dane/DANEEntry;->getCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v3    # "entry":Lorg/bouncycastle/cert/dane/DANEEntry;
    goto :goto_0

    .line 85
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Lorg/bouncycastle/util/CollectionStore;

    invoke-direct {v2, v1}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

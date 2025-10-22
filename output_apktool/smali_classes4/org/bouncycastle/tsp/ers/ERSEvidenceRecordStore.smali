.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;
.super Ljava/lang/Object;
.source "ERSEvidenceRecordStore.java"

# interfaces
.implements Lorg/bouncycastle/util/Store;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Store<",
        "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private recordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "records"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 31
    .local p1, "records":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    .line 35
    .local v1, "record":Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->getArchiveTimeStamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 37
    .local v2, "archiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    if-nez v4, :cond_0

    .line 39
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->getDigestAlgorithmProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v4

    .line 40
    .local v4, "digProv":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    .line 43
    .end local v4    # "digProv":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getHashTreeLeaf()Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v4

    .line 45
    .local v4, "dataLeaf":Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    if-eqz v4, :cond_3

    .line 47
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object v5

    .line 49
    .local v5, "dataHashes":[[B
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 52
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v5

    if-eq v3, v6, :cond_1

    .line 54
    new-instance v6, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    aget-object v7, v5, v3

    invoke-direct {v6, v7}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v6, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    iget-object v6, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-static {v6, v4}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    goto :goto_2

    .line 60
    :cond_2
    new-instance v6, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    aget-object v3, v5, v3

    invoke-direct {v6, v3}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v6, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    .line 62
    .end local v5    # "dataHashes":[[B
    :goto_2
    goto :goto_3

    .line 66
    :cond_3
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStampDigestValue()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V

    .line 68
    .end local v1    # "record":Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .end local v2    # "archiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .end local v4    # "dataLeaf":Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    :goto_3
    goto :goto_0

    .line 69
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private addRecord(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)V
    .locals 3
    .param p1, "hashNode"    # Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
    .param p2, "record"    # Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashNode",
            "record"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, "recs":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v1, "newRecs":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v1    # "newRecs":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    return-void
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Selector<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/StoreException;
        }
    .end annotation

    .line 93
    .local p1, "selector":Lorg/bouncycastle/util/Selector;, "Lorg/bouncycastle/util/Selector<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    instance-of v0, p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;

    if-eqz v0, :cond_3

    .line 95
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->getData()Lorg/bouncycastle/tsp/ers/ERSData;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;-><init>([B)V

    .line 96
    .local v0, "node":Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 98
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    if-eqz v1, :cond_2

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v2, "rv":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    .line 105
    .local v4, "record":Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    invoke-interface {p1, v4}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v4    # "record":Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 114
    .end local v2    # "rv":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 117
    .end local v0    # "node":Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    :cond_3
    if-nez p1, :cond_5

    .line 120
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 121
    .local v0, "rv":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 125
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "rv":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    .restart local v0    # "rv":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;->recordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 133
    .local v2, "next":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 135
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    invoke-interface {p1, v4}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 140
    .end local v2    # "next":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    .end local v3    # "i":I
    :cond_7
    goto :goto_2

    .line 142
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

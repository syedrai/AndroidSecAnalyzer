.class abstract Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IteratorBasedImmutableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 806
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 837
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;-><init>(Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 811
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapKeySet;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 842
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMapValues;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapValues;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method abstract entryIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 852
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

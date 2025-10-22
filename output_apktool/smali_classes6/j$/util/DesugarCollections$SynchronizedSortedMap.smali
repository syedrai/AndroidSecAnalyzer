.class Lj$/util/DesugarCollections$SynchronizedSortedMap;
.super Lj$/util/DesugarCollections$SynchronizedMap;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$SynchronizedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;",
        "Lj$/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a194bdf48d1f3d1L


# instance fields
.field private final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1786
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    .line 1787
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 1788
    return-void
.end method

.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1791
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1792
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 1793
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1796
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1797
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1820
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1808
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1809
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSortedMap;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1826
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1827
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1828
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1802
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1803
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSortedMap;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1814
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedMap;, "Ljava/util/DesugarCollections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1815
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSortedMap;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

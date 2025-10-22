.class public Lcom/google/common/collect/ImmutableSortedMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient keys:[Ljava/lang/Object;

.field private transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 650
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;I)V

    .line 651
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 653
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 654
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 655
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    .line 656
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    .line 657
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    .line 660
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 662
    .local v0, "newCapacity":I
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    .line 663
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    .line 665
    .end local v0    # "newCapacity":I
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->build()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 774
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildKeepingLast()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->buildKeepingLast()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final buildKeepingLast()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableSortedMap.Builder does not yet implement buildKeepingLast()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic buildOrThrow()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public buildOrThrow()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 788
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 798
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 800
    .local v0, "sortedKeys":[Ljava/lang/Object;
    move-object v1, v0

    .line 801
    .local v1, "sortedKs":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 802
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 808
    .local v2, "sortedValues":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    goto :goto_0

    .line 794
    .end local v0    # "sortedKeys":[Ljava/lang/Object;
    .end local v1    # "sortedKs":[Ljava/lang/Object;, "[TK;"
    .end local v2    # "sortedValues":[Ljava/lang/Object;
    .end local v3    # "i":I
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 795
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;->-$$Nest$smof(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 796
    .local v0, "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    return-object v0

    .line 790
    .end local v0    # "result":Lcom/google/common/collect/ImmutableSortedMap;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 808
    .local v0, "sortedKeys":[Ljava/lang/Object;
    .restart local v1    # "sortedKs":[Ljava/lang/Object;, "[TK;"
    .restart local v2    # "sortedValues":[Ljava/lang/Object;
    .restart local v3    # "i":I
    :goto_0
    iget v4, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    if-ge v3, v4, :cond_2

    .line 810
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    aget-object v6, v0, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keys required to be distinct but compared as equal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " and "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 819
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 820
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 821
    .local v4, "index":I
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    .line 808
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 823
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lcom/google/common/collect/ImmutableSortedMap;

    new-instance v4, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 825
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iget-object v6, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v4, v5, v6}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 826
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    .line 823
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method combine(Lcom/google/common/collect/ImmutableSortedMap$Builder;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 747
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "other":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    iget v1, p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->ensureCapacity(I)V

    .line 748
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    iget v3, p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    iget v3, p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    iget v1, p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    .line 751
    return-object p0
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "valueComparator"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueComparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 737
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not available on ImmutableSortedMap.Builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 675
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->ensureCapacity(I)V

    .line 676
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 677
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    aput-object p1, v0, v1

    .line 678
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    aput-object p2, v0, v1

    .line 679
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    .line 680
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 694
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entries"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "map"
        }
    .end annotation

    .line 640
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 722
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 723
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 707
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$Builder;, "Lcom/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 708
    return-object p0
.end method

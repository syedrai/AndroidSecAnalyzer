.class public abstract Lcom/google/common/collect/Sets$SetView;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 596
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Sets-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Sets$SetView;-><init>()V

    return-void
.end method

.method static maxSize(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 806
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    instance-of v0, p0, Lcom/google/common/collect/Sets$SetView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Sets$SetView;

    invoke-virtual {v0}, Lcom/google/common/collect/Sets$SetView;->maxSize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method static minSize(Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 790
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    instance-of v0, p0, Lcom/google/common/collect/Sets$SetView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Sets$SetView;

    invoke-virtual {v0}, Lcom/google/common/collect/Sets$SetView;->minSize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 714
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public copyInto(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/util/Set<",
            "TE;>;>(TS;)TS;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    .local p1, "set":Ljava/util/Set;, "TS;"
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 631
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 728
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 729
    return v0

    .line 731
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 732
    return v2

    .line 734
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 736
    .local v1, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-static {v1}, Lcom/google/common/collect/Sets$SetView;->maxSize(Ljava/util/Set;)I

    move-result v3

    .line 737
    .local v3, "thatMaxSize":I
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->minSize()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 738
    return v2

    .line 740
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/Sets$SetView;->minSize(Ljava/util/Set;)I

    move-result v4

    .line 741
    .local v4, "thatMinSize":I
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->maxSize()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 742
    return v2

    .line 748
    :cond_3
    const/4 v5, 0x0

    .line 749
    .local v5, "thisSize":I
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 751
    .local v7, "e":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_4

    .line 752
    return v2

    .line 756
    :cond_4
    nop

    .line 757
    nop

    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    .line 758
    goto :goto_0

    .line 754
    .restart local v7    # "e":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 755
    .local v0, "ignored":Ljava/lang/RuntimeException;
    :goto_1
    return v2

    .line 760
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    if-ne v5, v3, :cond_6

    .line 762
    return v0

    .line 763
    :cond_6
    if-ge v5, v4, :cond_7

    .line 765
    return v2

    .line 767
    :cond_7
    const/4 v6, 0x0

    .line 768
    .local v6, "thatSize":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 769
    .local v8, "unused":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    if-le v6, v5, :cond_8

    .line 770
    return v2

    .line 772
    .end local v8    # "unused":Ljava/lang/Object;
    :cond_8
    goto :goto_2

    .line 773
    :cond_9
    return v0
.end method

.method public immutableCopy()Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 608
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->maxSize()I

    move-result v0

    .line 609
    .local v0, "maxSize":I
    if-nez v0, :cond_0

    .line 610
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 612
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 613
    .local v1, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 614
    .local v3, "element":Ljava/lang/Object;, "TE;"
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 615
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    return-object v2
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 595
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method abstract maxSize()I
.end method

.method abstract minSize()I
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    .local p1, "oldElements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementsToKeep"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    .local p0, "this":Lcom/google/common/collect/Sets$SetView;, "Lcom/google/common/collect/Sets$SetView<TE;>;"
    .local p1, "elementsToKeep":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

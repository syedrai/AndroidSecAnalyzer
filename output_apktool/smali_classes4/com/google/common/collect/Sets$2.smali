.class Lcom/google/common/collect/Sets$2;
.super Lcom/google/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$set1",
            "val$set2"
        }
    .end annotation

    .line 919
    iput-object p1, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$SetView;-><init>(Lcom/google/common/collect/Sets-IA;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
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

    .line 956
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 961
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 922
    new-instance v0, Lcom/google/common/collect/Sets$2$1;

    iget-object v1, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/Sets$2$1;-><init>(Lcom/google/common/collect/Sets$2;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 919
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method maxSize()I
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Sets$2;->maxSize(Ljava/util/Set;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/collect/Sets$2;->maxSize(Ljava/util/Set;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method minSize()I
    .locals 1

    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 4

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 942
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 943
    add-int/lit8 v0, v0, 0x1

    .line 945
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 946
    :cond_1
    return v0
.end method

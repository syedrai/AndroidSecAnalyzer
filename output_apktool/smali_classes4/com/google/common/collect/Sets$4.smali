.class Lcom/google/common/collect/Sets$4;
.super Lcom/google/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets;->symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
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

    .line 1058
    iput-object p1, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$SetView;-><init>(Lcom/google/common/collect/Sets-IA;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1062
    .local v3, "itr1":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1063
    .local v5, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    new-instance v1, Lcom/google/common/collect/Sets$4$1;

    iget-object v4, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    iget-object v6, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/Sets$4$1;-><init>(Lcom/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Set;Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1058
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$4;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method maxSize()I
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Sets$4;->maxSize(Ljava/util/Set;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/collect/Sets$4;->maxSize(Ljava/util/Set;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0
.end method

.method minSize()I
    .locals 3

    .line 1111
    iget-object v0, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Sets$4;->minSize(Ljava/util/Set;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/collect/Sets$4;->maxSize(Ljava/util/Set;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1112
    .local v0, "difference":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/collect/Sets$4;->minSize(Ljava/util/Set;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Sets$4;->maxSize(Ljava/util/Set;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public size()I
    .locals 4

    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1087
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    add-int/lit8 v0, v0, 0x1

    .line 1090
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 1091
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1092
    .restart local v2    # "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1093
    add-int/lit8 v0, v0, 0x1

    .line 1095
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_1

    .line 1096
    :cond_3
    return v0
.end method

.class Lcom/google/common/collect/Maps$6;
.super Lcom/google/common/collect/ForwardingNavigableSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingNavigableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$set"
        }
    .end annotation

    .line 1164
    iput-object p1, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingNavigableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1172
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "es"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1177
    .local p1, "es":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$6;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$6;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$6;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/SortedSet;
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$6;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1218
    invoke-super {p0}, Lcom/google/common/collect/ForwardingNavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toElement",
            "inclusive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1187
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingNavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1182
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingNavigableSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromElement",
            "fromInclusive",
            "toElement",
            "toInclusive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1202
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    nop

    .line 1203
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ForwardingNavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromElement",
            "toElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1193
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingNavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromElement",
            "inclusive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1213
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingNavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1208
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingNavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->-$$Nest$smremoveOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

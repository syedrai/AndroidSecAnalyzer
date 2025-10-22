.class final Lcom/google/common/collect/CartesianList;
.super Ljava/util/AbstractList;
.source "CartesianList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final transient axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient axesSizeProduct:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetaxes(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAxisIndexForProductIndex(Lcom/google/common/collect/CartesianList;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CartesianList;->getAxisIndexForProductIndex(II)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/List<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    .local p1, "axes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/util/List<TE;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    .line 54
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 55
    .local v0, "axesSizeProduct":[I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    aput v1, v0, v2

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 58
    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_0
    nop

    .line 64
    iput-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cartesian product too large; must have size at most Integer.MAX_VALUE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static create(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+TE;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 41
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+TE;>;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 42
    .local v0, "axesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/List<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 43
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 44
    .local v3, "copy":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 48
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .end local v3    # "copy":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Lcom/google/common/collect/CartesianList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/CartesianList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method private getAxisIndexForProductIndex(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "axis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "axis"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    div-int v0, p1, v0

    iget-object v1, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 158
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 159
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 160
    return v1

    .line 162
    :cond_1
    const/4 v2, 0x0

    .line 163
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 164
    .local v4, "o":Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 165
    return v1

    .line 167
    :cond_2
    nop

    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CartesianList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 118
    new-instance v0, Lcom/google/common/collect/CartesianList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CartesianList$1;-><init>(Lcom/google/common/collect/CartesianList;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CartesianList;->get(I)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 77
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 81
    .local v2, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v3, 0x0

    .line 82
    .local v3, "computedIndex":I
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    .line 84
    .local v4, "axisIndex":I
    iget-object v5, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 85
    .local v5, "elemIndex":I
    if-ne v5, v1, :cond_2

    .line 86
    return v1

    .line 88
    :cond_2
    iget-object v6, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    mul-int v6, v6, v5

    add-int/2addr v3, v6

    .line 89
    .end local v4    # "axisIndex":I
    .end local v5    # "elemIndex":I
    goto :goto_0

    .line 90
    :cond_3
    return v3
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 96
    return v1

    .line 98
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 99
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 100
    return v1

    .line 102
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 103
    .local v2, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v3, 0x0

    .line 104
    .local v3, "computedIndex":I
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    .line 106
    .local v4, "axisIndex":I
    iget-object v5, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    .line 107
    .local v5, "elemIndex":I
    if-ne v5, v1, :cond_2

    .line 108
    return v1

    .line 110
    :cond_2
    iget-object v6, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    mul-int v6, v6, v5

    add-int/2addr v3, v6

    .line 111
    .end local v4    # "axisIndex":I
    .end local v5    # "elemIndex":I
    goto :goto_0

    .line 112
    :cond_3
    return v3
.end method

.method public size()I
    .locals 2

    .line 150
    .local p0, "this":Lcom/google/common/collect/CartesianList;, "Lcom/google/common/collect/CartesianList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

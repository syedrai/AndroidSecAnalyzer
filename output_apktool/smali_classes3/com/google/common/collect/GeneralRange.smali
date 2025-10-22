.class final Lcom/google/common/collect/GeneralRange;
.super Ljava/lang/Object;
.source "GeneralRange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final hasLowerBound:Z

.field private final hasUpperBound:Z

.field private final lowerBoundType:Lcom/google/common/collect/BoundType;

.field private final lowerEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private transient reverse:Lcom/google/common/collect/GeneralRange;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final upperBoundType:Lcom/google/common/collect/BoundType;

.field private final upperEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 5
    .param p2, "hasLowerBound"    # Z
    .param p4, "lowerBoundType"    # Lcom/google/common/collect/BoundType;
    .param p5, "hasUpperBound"    # Z
    .param p7, "upperBoundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "comparator",
            "hasLowerBound",
            "lowerEndpoint",
            "lowerBoundType",
            "hasUpperBound",
            "upperEndpoint",
            "upperBoundType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "lowerEndpoint":Ljava/lang/Object;, "TT;"
    .local p6, "upperEndpoint":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 112
    iput-boolean p2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 113
    iput-boolean p5, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 114
    iput-object p3, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 115
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    .line 116
    iput-object p6, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 117
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    .line 124
    if-eqz p2, :cond_0

    .line 125
    nop

    .line 127
    invoke-static {p3}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 129
    :cond_0
    if-eqz p5, :cond_1

    .line 130
    nop

    .line 132
    invoke-static {p6}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p6}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 135
    :cond_1
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 136
    nop

    .line 138
    invoke-static {p3}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p6}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 140
    .local v0, "cmp":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-string v4, "lowerEndpoint (%s) > upperEndpoint (%s)"

    invoke-static {v3, v4, p3, p6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    if-nez v0, :cond_5

    .line 143
    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p4, v3, :cond_4

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p7, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 146
    .end local v0    # "cmp":I
    :cond_5
    return-void
.end method

.method static all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;
    .locals 8
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .locals 8
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comparator",
            "endpoint",
            "boundType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "endpoint":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local p1    # "endpoint":Ljava/lang/Object;, "TT;"
    .end local p2    # "boundType":Lcom/google/common/collect/BoundType;
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v3, "endpoint":Ljava/lang/Object;, "TT;"
    .local v4, "boundType":Lcom/google/common/collect/BoundType;
    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static from(Lcom/google/common/collect/Range;)Lcom/google/common/collect/GeneralRange;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range<",
            "TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v5, v0

    .line 45
    .local v5, "lowerEndpoint":Ljava/lang/Comparable;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    :goto_1
    move-object v6, v0

    .line 47
    .local v6, "lowerBoundType":Lcom/google/common/collect/BoundType;
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    :cond_2
    move-object v8, v1

    .line 48
    .local v8, "upperEndpoint":Ljava/lang/Comparable;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    :goto_2
    move-object v9, v0

    .line 49
    .local v9, "upperBoundType":Lcom/google/common/collect/BoundType;
    new-instance v2, Lcom/google/common/collect/GeneralRange;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v4

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v7

    invoke-direct/range {v2 .. v9}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 49
    return-object v2
.end method

.method static range(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .locals 8
    .param p2, "lowerType"    # Lcom/google/common/collect/BoundType;
    .param p4, "upperType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "comparator",
            "lower",
            "lowerType",
            "upper",
            "upperType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            "TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "lower":Ljava/lang/Object;, "TT;"
    .local p3, "upper":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local p1    # "lower":Ljava/lang/Object;, "TT;"
    .end local p2    # "lowerType":Lcom/google/common/collect/BoundType;
    .end local p3    # "upper":Ljava/lang/Object;, "TT;"
    .end local p4    # "upperType":Lcom/google/common/collect/BoundType;
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v3, "lower":Ljava/lang/Object;, "TT;"
    .local v4, "lowerType":Lcom/google/common/collect/BoundType;
    .local v6, "upper":Ljava/lang/Object;, "TT;"
    .local v7, "upperType":Lcom/google/common/collect/BoundType;
    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method private static reverseComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 290
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method static upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .locals 8
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comparator",
            "endpoint",
            "boundType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "endpoint":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/GeneralRange;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .end local p1    # "endpoint":Ljava/lang/Object;, "TT;"
    .end local p2    # "boundType":Lcom/google/common/collect/BoundType;
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v6, "endpoint":Ljava/lang/Object;, "TT;"
    .local v7, "boundType":Lcom/google/common/collect/BoundType;
    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method


# virtual methods
.method comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    instance-of v0, p1, Lcom/google/common/collect/GeneralRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 244
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/GeneralRange;

    .line 245
    .local v0, "r":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<*>;"
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v3, v0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-ne v2, v3, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 245
    :goto_0
    return v1

    .line 253
    .end local v0    # "r":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<*>;"
    :cond_1
    return v1
.end method

.method getLowerBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 309
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method getLowerEndpoint()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method getUpperBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 317
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method getUpperEndpoint()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method hasLowerBound()Z
    .locals 1

    .line 153
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    return v0
.end method

.method hasUpperBound()Z
    .locals 1

    .line 157
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 258
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 260
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    .line 262
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 263
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 258
    invoke-static {v5}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;
    .locals 12
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
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "other":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 198
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 199
    .local v0, "hasLowBound":Z
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "lowEnd":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    .line 201
    .local v2, "lowType":Lcom/google/common/collect/BoundType;
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    iget-boolean v0, p1, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 203
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    move v6, v0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 207
    .local v3, "cmp":I
    if-ltz v3, :cond_1

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v5, :cond_2

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    move v6, v0

    goto :goto_0

    .line 213
    .end local v3    # "cmp":I
    :cond_2
    move v6, v0

    .end local v0    # "hasLowBound":Z
    .local v6, "hasLowBound":Z
    :goto_0
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 214
    .local v0, "hasUpBound":Z
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 215
    .local v3, "upEnd":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    .line 216
    .local v4, "upType":Lcom/google/common/collect/BoundType;
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v5

    if-nez v5, :cond_3

    .line 217
    iget-boolean v0, p1, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 218
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 219
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    move v9, v0

    move-object v10, v3

    goto :goto_1

    .line 220
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 221
    iget-object v5, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 222
    .local v5, "cmp":I
    if-gtz v5, :cond_4

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v7

    sget-object v8, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v7, v8, :cond_5

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v3

    .line 224
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v4

    move v9, v0

    move-object v10, v3

    goto :goto_1

    .line 228
    .end local v5    # "cmp":I
    :cond_5
    move v9, v0

    move-object v10, v3

    .end local v0    # "hasUpBound":Z
    .end local v3    # "upEnd":Ljava/lang/Object;, "TT;"
    .local v9, "hasUpBound":Z
    .local v10, "upEnd":Ljava/lang/Object;, "TT;"
    :goto_1
    if-eqz v6, :cond_7

    if-eqz v9, :cond_7

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v1, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 230
    .local v0, "cmp":I
    if-gtz v0, :cond_6

    if-nez v0, :cond_7

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v2, v3, :cond_7

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v3, :cond_7

    .line 232
    :cond_6
    move-object v1, v10

    .line 233
    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 234
    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v7, v1

    move-object v8, v2

    move-object v11, v4

    goto :goto_2

    .line 238
    .end local v0    # "cmp":I
    :cond_7
    move-object v7, v1

    move-object v8, v2

    move-object v11, v4

    .end local v1    # "lowEnd":Ljava/lang/Object;, "TT;"
    .end local v2    # "lowType":Lcom/google/common/collect/BoundType;
    .end local v4    # "upType":Lcom/google/common/collect/BoundType;
    .local v7, "lowEnd":Ljava/lang/Object;, "TT;"
    .local v8, "lowType":Lcom/google/common/collect/BoundType;
    .local v11, "upType":Lcom/google/common/collect/BoundType;
    :goto_2
    new-instance v4, Lcom/google/common/collect/GeneralRange;

    iget-object v5, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-direct/range {v4 .. v11}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v4
.end method

.method isEmpty()Z
    .locals 1

    .line 162
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0
.end method

.method reverse()Lcom/google/common/collect/GeneralRange;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    .line 271
    .local v0, "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    if-nez v0, :cond_0

    .line 272
    new-instance v1, Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 274
    invoke-static {v2}, Lcom/google/common/collect/GeneralRange;->reverseComparator(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v4

    .line 277
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 279
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v7

    .line 280
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 281
    .end local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local v1, "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iput-object p0, v1, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    .line 282
    iput-object v1, p0, Lcom/google/common/collect/GeneralRange;->reverse:Lcom/google/common/collect/GeneralRange;

    return-object v1

    .line 284
    .end local v1    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .restart local v0    # "result":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 295
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    .line 298
    :goto_0
    iget-boolean v2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "-\u221e"

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    iget-boolean v3, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v3, "\u221e"

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 301
    iget-object v4, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    sget-object v5, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v4, v5, :cond_3

    const/16 v4, 0x5d

    goto :goto_3

    :cond_3
    const/16 v4, 0x29

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method tooHigh(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 178
    return v1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "ubound":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 183
    .local v2, "cmp":I
    const/4 v3, 0x1

    if-lez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/2addr v1, v5

    or-int/2addr v1, v4

    return v1
.end method

.method tooLow(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    return v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "lbound":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 173
    .local v2, "cmp":I
    const/4 v3, 0x1

    if-gez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/2addr v1, v5

    or-int/2addr v1, v4

    return v1
.end method

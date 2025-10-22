.class public final Lcom/google/common/collect/EnumMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EnumMultiset$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient counts:[I

.field private transient distinctElements:I

.field private transient enumConstants:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient size:J

.field private transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcounts(Lcom/google/common/collect/EnumMultiset;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdistinctElements(Lcom/google/common/collect/EnumMultiset;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenumConstants(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/google/common/collect/EnumMultiset;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputdistinctElements(Lcom/google/common/collect/EnumMultiset;I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsize(Lcom/google/common/collect/EnumMultiset;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 98
    return-void
.end method

.method private checkIsE(Ljava/lang/Object;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected an "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 55
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/EnumMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 67
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/google/common/collect/EnumMultiset;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    .line 70
    .local v1, "multiset":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {v1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 71
    return-object v1
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/EnumMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 81
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/EnumMultiset;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;

    move-result-object v0

    .line 82
    .local v0, "result":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 83
    return-object v0
.end method

.method private isActuallyE(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    .line 103
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 104
    .local v2, "index":I
    iget-object v3, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    aget-object v3, v3, v2

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 106
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "index":I
    :cond_1
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 304
    .local v0, "localType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 305
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    iput-object v1, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    .line 306
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->enumConstants:[Ljava/lang/Enum;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    .line 307
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 308
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 291
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 292
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 293
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;I)I
    .locals 8
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "occurrences"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->checkIsE(Ljava/lang/Object;)V

    .line 145
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 146
    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 150
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aget v1, v1, v0

    .line 151
    .local v1, "oldCount":I
    int-to-long v2, v1

    int-to-long v4, p2

    add-long/2addr v2, v4

    .line 152
    .local v2, "newCount":J
    const-wide/32 v4, 0x7fffffff

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gtz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "too many occurrences: %s"

    invoke-static {v4, v5, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 153
    iget-object v4, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    long-to-int v5, v2

    aput v5, v4, v0

    .line 154
    if-nez v1, :cond_2

    .line 155
    iget v4, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 157
    :cond_2
    iget-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 158
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "occurrences"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->add(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    .line 209
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 210
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 211
    iput v1, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 212
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    .line 137
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    return v1

    .line 134
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method distinctElements()I
    .locals 1

    .line 122
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$1;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$2;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 8
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "occurrences"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->isActuallyE(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    .line 170
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const-string v2, "occurrences"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 171
    if-nez p2, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 174
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 175
    .local v2, "index":I
    iget-object v3, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aget v3, v3, v2

    .line 176
    .local v3, "oldCount":I
    if-nez v3, :cond_2

    .line 177
    return v0

    .line 178
    :cond_2
    if-gt v3, p2, :cond_3

    .line 179
    iget-object v4, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aput v0, v4, v2

    .line 180
    iget v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 181
    iget-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    sub-int v4, v3, p2

    aput v4, v0, v2

    .line 184
    iget-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    int-to-long v6, p2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 186
    :goto_0
    return v3

    .line 167
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "index":I
    .end local v3    # "oldCount":I
    :cond_4
    :goto_1
    return v0
.end method

.method public setCount(Ljava/lang/Enum;I)I
    .locals 6
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Enum;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset;->checkIsE(Ljava/lang/Object;)V

    .line 194
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 195
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 196
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aget v1, v1, v0

    .line 197
    .local v1, "oldCount":I
    iget-object v2, p0, Lcom/google/common/collect/EnumMultiset;->counts:[I

    aput p2, v2, v0

    .line 198
    iget-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    sub-int v4, p2, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    .line 199
    if-nez v1, :cond_0

    if-lez p2, :cond_0

    .line 200
    iget v2, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    goto :goto_0

    .line 201
    :cond_0
    if-lez v1, :cond_1

    if-nez p2, :cond_1

    .line 202
    iget v2, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/EnumMultiset;->distinctElements:I

    .line 204
    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "count"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumMultiset;->setCount(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "element",
            "oldCount",
            "newCount"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    .line 127
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/EnumMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

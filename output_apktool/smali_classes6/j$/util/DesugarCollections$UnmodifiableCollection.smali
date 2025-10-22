.class Lj$/util/DesugarCollections$UnmodifiableCollection;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Lj$/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Collection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19420080cb5ef71eL


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-eqz p1, :cond_0

    .line 117
    iput-object p1, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 172
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 184
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 196
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 180
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 203
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 125
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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

    .line 148
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableCollection$1;

    invoke-direct {v0, p0}, Lj$/util/DesugarCollections$UnmodifiableCollection$1;-><init>(Lj$/util/DesugarCollections$UnmodifiableCollection;)V

    return-object v0
.end method

.method public parallelStream()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 176
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 188
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 207
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 192
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 121
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 133
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 144
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableCollection;, "Ljava/util/DesugarCollections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

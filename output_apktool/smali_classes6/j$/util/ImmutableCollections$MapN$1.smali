.class Lj$/util/ImmutableCollections$MapN$1;
.super Ljava/util/AbstractSet;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/ImmutableCollections$MapN;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Lj$/util/ImmutableCollections$MapN;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/ImmutableCollections$MapN;

    .line 939
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    iput-object p1, p0, Lj$/util/ImmutableCollections$MapN$1;->this$0:Lj$/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 947
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    new-instance v0, Lj$/util/ImmutableCollections$MapN$MapNIterator;

    iget-object v1, p0, Lj$/util/ImmutableCollections$MapN$1;->this$0:Lj$/util/ImmutableCollections$MapN;

    invoke-direct {v0, v1}, Lj$/util/ImmutableCollections$MapN$MapNIterator;-><init>(Lj$/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 942
    .local p0, "this":Lj$/util/ImmutableCollections$MapN$1;, "Ljava/util/ImmutableCollections$MapN$1;"
    iget-object v0, p0, Lj$/util/ImmutableCollections$MapN$1;->this$0:Lj$/util/ImmutableCollections$MapN;

    iget v0, v0, Lj$/util/ImmutableCollections$MapN;->size:I

    return v0
.end method

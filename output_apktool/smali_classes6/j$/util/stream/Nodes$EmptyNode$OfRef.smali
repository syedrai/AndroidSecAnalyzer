.class Lj$/util/stream/Nodes$EmptyNode$OfRef;
.super Lj$/util/stream/Nodes$EmptyNode;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Nodes$EmptyNode<",
        "TT;[TT;",
        "Ljava/util/function/Consumer<",
        "-TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 584
    .local p0, "this":Lj$/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-direct {p0}, Lj$/util/stream/Nodes$EmptyNode;-><init>()V

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Nodes-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/Nodes$EmptyNode$OfRef;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 582
    .local p0, "this":Lj$/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-super {p0, p1, p2}, Lj$/util/stream/Nodes$EmptyNode;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    .line 582
    .local p0, "this":Lj$/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-super {p0, p1}, Lj$/util/stream/Nodes$EmptyNode;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lj$/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode$OfRef<TT;>;"
    invoke-static {}, Lj$/util/Spliterators;->emptySpliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

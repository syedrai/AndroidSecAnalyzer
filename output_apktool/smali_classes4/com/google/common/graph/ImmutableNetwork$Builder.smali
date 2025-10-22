.class public Lcom/google/common/graph/ImmutableNetwork$Builder;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/ImmutableNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mutableNetwork:Lcom/google/common/graph/MutableNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$Builder;, "Lcom/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "networkBuilder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lcom/google/common/graph/MutableNetwork;

    .line 162
    return-void
.end method


# virtual methods
.method public addEdge(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Lcom/google/common/graph/ImmutableNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "endpoints",
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TE;)",
            "Lcom/google/common/graph/ImmutableNetwork$Builder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$Builder;, "Lcom/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "endpoints":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    .local p2, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lcom/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/MutableNetwork;->addEdge(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Z

    .line 232
    return-object p0
.end method

.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/ImmutableNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeU",
            "nodeV",
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)",
            "Lcom/google/common/graph/ImmutableNetwork$Builder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$Builder;, "Lcom/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lcom/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    return-object p0
.end method

.method public addNode(Ljava/lang/Object;)Lcom/google/common/graph/ImmutableNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/ImmutableNetwork$Builder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$Builder;, "Lcom/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lcom/google/common/graph/MutableNetwork;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public build()Lcom/google/common/graph/ImmutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/google/common/graph/ImmutableNetwork$Builder;, "Lcom/google/common/graph/ImmutableNetwork$Builder<TN;TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableNetwork$Builder;->mutableNetwork:Lcom/google/common/graph/MutableNetwork;

    invoke-static {v0}, Lcom/google/common/graph/ImmutableNetwork;->copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/ImmutableNetwork;

    move-result-object v0

    return-object v0
.end method

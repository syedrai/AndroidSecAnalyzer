.class Lcom/google/common/graph/AbstractBaseGraph$2;
.super Lcom/google/common/graph/IncidentEdgeSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractBaseGraph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/IncidentEdgeSet<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$DOd_ck7YxLxNdIctYv-NuhE8Dv8(Lcom/google/common/graph/AbstractBaseGraph$2;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->lambda$iterator$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H1VMq_R4dsw4eZHvM0vPgVrhkmw(Lcom/google/common/graph/AbstractBaseGraph$2;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->lambda$iterator$0(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p0ng1ZnMtu7eBzoihljUtNwpo_A(Lcom/google/common/graph/AbstractBaseGraph$2;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->lambda$iterator$1(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/google/common/graph/AbstractBaseGraph;Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/AbstractBaseGraph;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "graph",
            "node"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$2;, "Lcom/google/common/graph/AbstractBaseGraph$2;"
    .local p2, "graph":Lcom/google/common/graph/BaseGraph;, "Lcom/google/common/graph/BaseGraph<TN;>;"
    .local p3, "node":Ljava/lang/Object;, "TN;"
    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/IncidentEdgeSet;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$iterator$0(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 1
    .param p1, "predecessor"    # Ljava/lang/Object;

    .line 119
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$2;, "Lcom/google/common/graph/AbstractBaseGraph$2;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$iterator$1(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 1
    .param p1, "successor"    # Ljava/lang/Object;

    .line 124
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$2;, "Lcom/google/common/graph/AbstractBaseGraph$2;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$iterator$2(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 1
    .param p1, "adjacentNode"    # Ljava/lang/Object;

    .line 129
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$2;, "Lcom/google/common/graph/AbstractBaseGraph$2;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$2;, "Lcom/google/common/graph/AbstractBaseGraph$2;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    .line 118
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V

    .line 117
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    .line 123
    invoke-interface {v1, v2}, Lcom/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V

    .line 120
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->graph:Lcom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$2;->node:Ljava/lang/Object;

    .line 128
    invoke-interface {v0, v1}, Lcom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractBaseGraph$2$$ExternalSyntheticLambda2;-><init>(Lcom/google/common/graph/AbstractBaseGraph$2;)V

    .line 127
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 111
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$2;, "Lcom/google/common/graph/AbstractBaseGraph$2;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

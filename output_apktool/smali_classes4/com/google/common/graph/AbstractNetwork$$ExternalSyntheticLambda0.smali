.class public final synthetic Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public synthetic f$0:Lcom/google/common/graph/AbstractNetwork;

.field public synthetic f$1:Ljava/lang/Object;

.field public synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractNetwork;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/AbstractNetwork;

    iput-object p2, p0, Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/AbstractNetwork;

    iget-object v1, p0, Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/graph/AbstractNetwork$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/graph/AbstractNetwork;->$r8$lambda$aM5SPel1epoPzrPziznNZANRUvI(Lcom/google/common/graph/AbstractNetwork;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

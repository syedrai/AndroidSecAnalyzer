.class public final synthetic Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public synthetic f$0:Lcom/google/common/graph/AbstractBaseGraph;

.field public synthetic f$1:Ljava/lang/Object;

.field public synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractBaseGraph;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/AbstractBaseGraph;

    iput-object p2, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/graph/AbstractBaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/common/graph/AbstractBaseGraph;->$r8$lambda$qSZcgutzMkNXG4V8hNHP9IAD96M(Lcom/google/common/graph/AbstractBaseGraph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public synthetic f$0:Lcom/google/common/graph/AbstractBaseGraph;

.field public synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractBaseGraph;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/graph/AbstractBaseGraph;

    iput-object p2, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/graph/AbstractBaseGraph;

    iget-object v1, p0, Lcom/google/common/graph/AbstractBaseGraph$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/graph/AbstractBaseGraph;->$r8$lambda$ph7_nOLF7ooIjw6vKPlzLUpglWY(Lcom/google/common/graph/AbstractBaseGraph;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

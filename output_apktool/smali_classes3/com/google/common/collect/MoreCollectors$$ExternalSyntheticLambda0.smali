.class public final synthetic Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    invoke-static {v0}, Lcom/google/common/collect/MoreCollectors;->lambda$onlyElement$0(Ljava/util/function/Supplier;)Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;

    move-result-object v0

    return-object v0
.end method

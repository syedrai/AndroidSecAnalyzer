.class public final synthetic Lcom/google/common/collect/StandardTable$RowMap$EntrySet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public synthetic f$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/StandardTable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

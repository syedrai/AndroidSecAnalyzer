.class public final synthetic Lcom/google/common/collect/Synchronized$SynchronizedTable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public synthetic f$0:Lcom/google/common/collect/Synchronized$SynchronizedTable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Synchronized$SynchronizedTable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Synchronized$SynchronizedTable;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->$r8$lambda$_1RueikLWRbrsR5tFF3wNCCkpS8(Lcom/google/common/collect/Synchronized$SynchronizedTable;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

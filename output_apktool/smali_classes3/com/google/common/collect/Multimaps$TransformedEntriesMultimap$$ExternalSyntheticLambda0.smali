.class public final synthetic Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public synthetic f$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->$r8$lambda$mGgMvheUFs_ua_C15mgPO1d0geA(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

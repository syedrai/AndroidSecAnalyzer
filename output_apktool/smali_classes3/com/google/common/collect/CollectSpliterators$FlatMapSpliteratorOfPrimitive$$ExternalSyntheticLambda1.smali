.class public final synthetic Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;

    invoke-static {v0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->$r8$lambda$9QPGNpyyLf1odw-V8yksE-gYnPM(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

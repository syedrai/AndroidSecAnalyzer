.class public final synthetic Lcom/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public synthetic f$0:Lcom/google/common/primitives/ImmutableLongArray$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/primitives/ImmutableLongArray$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/primitives/ImmutableLongArray$Builder;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/primitives/ImmutableLongArray$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/google/common/base/Splitter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# instance fields
.field public synthetic f$0:Lcom/google/common/base/CharMatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public final iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Splitter$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/base/CharMatcher;

    invoke-static {v0, p1, p2}, Lcom/google/common/base/Splitter;->lambda$on$0(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

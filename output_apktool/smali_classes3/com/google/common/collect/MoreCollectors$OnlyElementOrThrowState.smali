.class final Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;
.super Ljava/lang/Object;
.source "MoreCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MoreCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnlyElementOrThrowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field exceptionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field hasElement:Z


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;, "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<TT;>;"
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/lang/RuntimeException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->hasElement:Z

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->exceptionSupplier:Ljava/util/function/Supplier;

    .line 204
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;, "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->hasElement:Z

    if-nez v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->element:Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->hasElement:Z

    .line 213
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->exceptionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method combine(Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;)Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<",
            "TT;>;)",
            "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<",
            "TT;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;, "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<TT;>;"
    .local p1, "other":Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;, "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->hasElement:Z

    if-nez v0, :cond_0

    .line 217
    return-object p1

    .line 218
    :cond_0
    iget-boolean v0, p1, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->hasElement:Z

    if-nez v0, :cond_1

    .line 219
    return-object p0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->exceptionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;, "Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState<TT;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->hasElement:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$OnlyElementOrThrowState;->exceptionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.class abstract Lcom/google/common/collect/EnumMultiset$Itr;
.super Ljava/lang/Object;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/EnumMultiset;

.field toRemove:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/EnumMultiset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$Itr;, "Lcom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 214
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 222
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$Itr;, "Lcom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    nop

    :goto_0
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v1}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetenumConstants(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetcounts(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 224
    return v1

    .line 222
    :cond_0
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$Itr;, "Lcom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumMultiset$Itr;->output(I)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 237
    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    .line 238
    return-object v0

    .line 233
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract output(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 7

    .line 243
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$Itr;, "Lcom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 244
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetcounts(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v0, v0, v3

    if-lez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetdistinctElements(Lcom/google/common/collect/EnumMultiset;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fputdistinctElements(Lcom/google/common/collect/EnumMultiset;I)V

    .line 246
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetsize(Lcom/google/common/collect/EnumMultiset;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v1}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetcounts(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v1

    iget v5, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v1, v1, v5

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fputsize(Lcom/google/common/collect/EnumMultiset;J)V

    .line 247
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->-$$Nest$fgetcounts(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aput v2, v0, v1

    .line 249
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 250
    return-void
.end method

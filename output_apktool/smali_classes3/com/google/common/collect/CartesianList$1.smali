.class Lcom/google/common/collect/CartesianList$1;
.super Lcom/google/common/collect/ImmutableList;
.source "CartesianList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CartesianList;->get(I)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CartesianList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CartesianList;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$index"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/google/common/collect/CartesianList$1;, "Lcom/google/common/collect/CartesianList$1;"
    iput p2, p0, Lcom/google/common/collect/CartesianList$1;->val$index:I

    iput-object p1, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "axis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/google/common/collect/CartesianList$1;, "Lcom/google/common/collect/CartesianList$1;"
    invoke-virtual {p0}, Lcom/google/common/collect/CartesianList$1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    iget v1, p0, Lcom/google/common/collect/CartesianList$1;->val$index:I

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CartesianList;->-$$Nest$mgetAxisIndexForProductIndex(Lcom/google/common/collect/CartesianList;II)I

    move-result v0

    .line 129
    .local v0, "axisIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    invoke-static {v1}, Lcom/google/common/collect/CartesianList;->-$$Nest$fgetaxes(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method isPartialView()Z
    .locals 1

    .line 134
    .local p0, "this":Lcom/google/common/collect/CartesianList$1;, "Lcom/google/common/collect/CartesianList$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 122
    .local p0, "this":Lcom/google/common/collect/CartesianList$1;, "Lcom/google/common/collect/CartesianList$1;"
    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/CartesianList;

    invoke-static {v0}, Lcom/google/common/collect/CartesianList;->-$$Nest$fgetaxes(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 143
    .local p0, "this":Lcom/google/common/collect/CartesianList$1;, "Lcom/google/common/collect/CartesianList$1;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

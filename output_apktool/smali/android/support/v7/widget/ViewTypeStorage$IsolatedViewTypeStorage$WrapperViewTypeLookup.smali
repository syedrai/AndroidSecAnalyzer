.class Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field private mGlobalToLocalMapping:Landroid/util/SparseIntArray;

.field private mLocalToGlobalMapping:Landroid/util/SparseIntArray;

.field final mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

.field final synthetic this$0:Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;Landroid/support/v7/widget/NestedAdapterWrapper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;
    .param p2, "wrapper"    # Landroid/support/v7/widget/NestedAdapterWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    .line 155
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    .line 159
    iput-object p2, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 160
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->removeWrapper(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    .line 188
    return-void
.end method

.method public globalToLocal(I)I
    .locals 4
    .param p1, "globalType"    # I

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 178
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested global type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to the adapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    iget-object v3, v3, Landroid/support/v7/widget/NestedAdapterWrapper;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public localToGlobal(I)I
    .locals 3
    .param p1, "localType"    # I

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 165
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    .line 169
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v2, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->obtainViewType(Landroid/support/v7/widget/NestedAdapterWrapper;)I

    move-result v1

    .line 170
    .local v1, "globalType":I
    iget-object v2, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    iget-object v2, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    return v1
.end method

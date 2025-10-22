.class Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field final mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

.field final synthetic this$0:Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;Landroid/support/v7/widget/NestedAdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;
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

    .line 85
    iput-object p1, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 87
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->removeWrapper(Landroid/support/v7/widget/NestedAdapterWrapper;)V

    .line 112
    return-void
.end method

.method public globalToLocal(I)I
    .locals 0
    .param p1, "globalType"    # I

    .line 106
    return p1
.end method

.method public localToGlobal(I)I
    .locals 2
    .param p1, "localType"    # I

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v0, v0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, "wrappers":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/NestedAdapterWrapper;>;"
    if-nez v0, :cond_0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 96
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v1, v1, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroid/support/v7/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    return p1
.end method

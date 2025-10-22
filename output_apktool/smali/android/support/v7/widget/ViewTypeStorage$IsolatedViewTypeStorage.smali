.class public Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Landroid/support/v7/widget/ViewTypeStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsolatedViewTypeStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
    }
.end annotation


# instance fields
.field mGlobalTypeToWrapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mNextViewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    return-void
.end method


# virtual methods
.method public createViewTypeWrapper(Landroid/support/v7/widget/NestedAdapterWrapper;)Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;
    .locals 1
    .param p1, "wrapper"    # Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 141
    new-instance v0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;-><init>(Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;Landroid/support/v7/widget/NestedAdapterWrapper;)V

    return-object v0
.end method

.method public getWrapperForGlobalType(I)Landroid/support/v7/widget/NestedAdapterWrapper;
    .locals 4
    .param p1, "globalViewType"    # I

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 131
    .local v0, "wrapper":Landroid/support/v7/widget/NestedAdapterWrapper;
    if-eqz v0, :cond_0

    .line 135
    return-object v0

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the wrapper for global view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method obtainViewType(Landroid/support/v7/widget/NestedAdapterWrapper;)I
    .locals 2
    .param p1, "wrapper"    # Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 122
    iget v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    .line 123
    .local v0, "nextId":I
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    return v0
.end method

.method removeWrapper(Landroid/support/v7/widget/NestedAdapterWrapper;)V
    .locals 3
    .param p1, "wrapper"    # Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 146
    iget-object v1, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/NestedAdapterWrapper;

    .line 147
    .local v1, "existingWrapper":Landroid/support/v7/widget/NestedAdapterWrapper;
    if-ne v1, p1, :cond_0

    .line 148
    iget-object v2, p0, Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 145
    .end local v1    # "existingWrapper":Landroid/support/v7/widget/NestedAdapterWrapper;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

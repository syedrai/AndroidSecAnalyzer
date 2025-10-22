.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .line 2244
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2245
    iput p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2246
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2247
    return-void
.end method


# virtual methods
.method public getDragDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2298
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2304
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2305
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 2304
    invoke-static {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2283
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .line 2268
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2269
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .line 2257
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2258
    return-void
.end method

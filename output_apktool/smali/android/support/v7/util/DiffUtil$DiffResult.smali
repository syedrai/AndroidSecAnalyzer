.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 657
    .local p2, "diagonals":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Diagonal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 659
    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 660
    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 661
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 662
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 663
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 664
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 665
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 666
    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 667
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addEdgeDiagonals()V

    .line 668
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    .line 669
    return-void
.end method

.method private addEdgeDiagonals()V
    .locals 6

    .line 676
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/DiffUtil$Diagonal;

    .line 678
    .local v0, "first":Landroid/support/v7/util/DiffUtil$Diagonal;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    if-nez v2, :cond_1

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    if-eqz v2, :cond_2

    .line 679
    :cond_1
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v3, Landroid/support/v7/util/DiffUtil$Diagonal;

    invoke-direct {v3, v1, v1, v1}, Landroid/support/v7/util/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 682
    :cond_2
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v3, Landroid/support/v7/util/DiffUtil$Diagonal;

    iget v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    iget v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    invoke-direct {v3, v4, v5, v1}, Landroid/support/v7/util/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method private findMatchingAddition(I)V
    .locals 9
    .param p1, "posX"    # I

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "posY":I
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 733
    .local v1, "diagonalsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 734
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$Diagonal;

    .line 735
    .local v3, "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    :goto_1
    iget v4, v3, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    if-ge v0, v4, :cond_2

    .line 737
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v4, v4, v0

    if-nez v4, :cond_1

    .line 738
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v4, p1, v0}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v4

    .line 739
    .local v4, "matching":Z
    if-eqz v4, :cond_1

    .line 741
    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v5, p1, v0}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    .line 742
    .local v5, "contentsMatching":Z
    if-eqz v5, :cond_0

    const/16 v6, 0x8

    goto :goto_2

    .line 743
    :cond_0
    const/4 v6, 0x4

    :goto_2
    nop

    .line 745
    .local v6, "changeFlag":I
    iget-object v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v0, 0x4

    or-int/2addr v8, v6

    aput v8, v7, p1

    .line 746
    iget-object v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v8, p1, 0x4

    or-int/2addr v8, v6

    aput v8, v7, v0

    .line 747
    return-void

    .line 750
    .end local v4    # "matching":Z
    .end local v5    # "contentsMatching":Z
    .end local v6    # "changeFlag":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 752
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/util/DiffUtil$Diagonal;->endY()I

    move-result v0

    .line 733
    .end local v3    # "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private findMatchingItems()V
    .locals 9

    .line 691
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/util/DiffUtil$Diagonal;

    .line 692
    .local v1, "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_1
    iget v3, v1, Landroid/support/v7/util/DiffUtil$Diagonal;->size:I

    if-ge v2, v3, :cond_1

    .line 693
    iget v3, v1, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    add-int/2addr v3, v2

    .line 694
    .local v3, "posX":I
    iget v4, v1, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    add-int/2addr v4, v2

    .line 695
    .local v4, "posY":I
    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    .line 696
    .local v5, "theSame":Z
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x2

    .line 697
    .local v6, "changeFlag":I
    :goto_2
    iget-object v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v6

    aput v8, v7, v3

    .line 698
    iget-object v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v6

    aput v8, v7, v4

    .line 692
    .end local v3    # "posX":I
    .end local v4    # "posY":I
    .end local v5    # "theSame":Z
    .end local v6    # "changeFlag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 700
    .end local v1    # "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    .end local v2    # "offset":I
    :cond_1
    goto :goto_0

    .line 702
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v0, :cond_3

    .line 705
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMoveMatches()V

    .line 707
    :cond_3
    return-void
.end method

.method private findMoveMatches()V
    .locals 4

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "posX":I
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$Diagonal;

    .line 713
    .local v2, "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    :goto_1
    iget v3, v2, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    if-ge v0, v3, :cond_1

    .line 714
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    .line 716
    invoke-direct {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingAddition(I)V

    .line 718
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/util/DiffUtil$Diagonal;->endX()I

    move-result v0

    .line 722
    .end local v2    # "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    goto :goto_0

    .line 723
    :cond_2
    return-void
.end method

.method private static getPostponedUpdate(Ljava/util/Collection;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .locals 4
    .param p1, "posInList"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 967
    .local p0, "postponedUpdates":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v0, 0x0

    .line 968
    .local v0, "postponedUpdate":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 969
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 970
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 971
    .local v2, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_0

    .line 972
    move-object v0, v2

    .line 973
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 974
    goto :goto_1

    .line 976
    .end local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_0
    goto :goto_0

    .line 977
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 979
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 980
    .restart local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    if-eqz p2, :cond_2

    .line 981
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_2

    .line 983
    :cond_2
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 985
    .end local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :goto_2
    goto :goto_1

    .line 986
    :cond_3
    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 3
    .param p1, "newListPosition"    # I

    .line 788
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    if-ge p1, v0, :cond_1

    .line 792
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v0, p1

    .line 793
    .local v0, "status":I
    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_0

    .line 794
    const/4 v1, -0x1

    return v1

    .line 796
    :cond_0
    shr-int/lit8 v1, v0, 0x4

    return v1

    .line 789
    .end local v0    # "status":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .locals 3
    .param p1, "oldListPosition"    # I

    .line 766
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    if-ge p1, v0, :cond_1

    .line 770
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v0, p1

    .line 771
    .local v0, "status":I
    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_0

    .line 772
    const/4 v1, -0x1

    return v1

    .line 774
    :cond_0
    shr-int/lit8 v1, v0, 0x4

    return v1

    .line 767
    .end local v0    # "status":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 18
    .param p1, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v2, :cond_0

    .line 849
    move-object v2, v1

    check-cast v2, Landroid/support/v7/util/BatchingListUpdateCallback;

    .local v2, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    goto :goto_0

    .line 851
    .end local v2    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :cond_0
    new-instance v2, Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-direct {v2, v1}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 855
    .restart local v2    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    move-object v1, v2

    .line 861
    .end local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v1, "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    :goto_0
    iget v3, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 863
    .local v3, "currentListSize":I
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 865
    .local v4, "postponedUpdates":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget v5, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 866
    .local v5, "posX":I
    iget v6, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 870
    .local v6, "posY":I
    iget-object v7, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "diagonalIndex":I
    :goto_1
    if-ltz v7, :cond_b

    .line 871
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/util/DiffUtil$Diagonal;

    .line 872
    .local v9, "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    invoke-virtual {v9}, Landroid/support/v7/util/DiffUtil$Diagonal;->endX()I

    move-result v10

    .line 873
    .local v10, "endX":I
    invoke-virtual {v9}, Landroid/support/v7/util/DiffUtil$Diagonal;->endY()I

    move-result v11

    .line 877
    .local v11, "endY":I
    :goto_2
    const/4 v12, 0x0

    if-le v5, v10, :cond_4

    .line 878
    add-int/lit8 v5, v5, -0x1

    .line 880
    iget-object v13, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v13, v13, v5

    .line 881
    .local v13, "status":I
    and-int/lit8 v14, v13, 0xc

    if-eqz v14, :cond_3

    .line 882
    shr-int/lit8 v14, v13, 0x4

    .line 884
    .local v14, "newPos":I
    invoke-static {v4, v14, v12}, Landroid/support/v7/util/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v12

    .line 886
    .local v12, "postponedUpdate":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    if-eqz v12, :cond_2

    .line 888
    iget v15, v12, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v15, v3, v15

    .line 889
    .local v15, "updatedNewPos":I
    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v2, v5, v8}, Landroid/support/v7/util/BatchingListUpdateCallback;->onMoved(II)V

    .line 890
    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_1

    .line 891
    iget-object v8, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v8, v5, v14}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    .line 892
    .local v8, "changePayload":Ljava/lang/Object;
    move-object/from16 v16, v1

    .end local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v16, "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    add-int/lit8 v1, v15, -0x1

    move/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "currentListSize":I
    .local v17, "currentListSize":I
    invoke-virtual {v2, v1, v3, v8}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 890
    .end local v8    # "changePayload":Ljava/lang/Object;
    .end local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v17    # "currentListSize":I
    .restart local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v3    # "currentListSize":I
    :cond_1
    move-object/from16 v16, v1

    move/from16 v17, v3

    const/4 v3, 0x1

    .line 894
    .end local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v3    # "currentListSize":I
    .end local v15    # "updatedNewPos":I
    .restart local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v17    # "currentListSize":I
    :goto_3
    goto :goto_4

    .line 896
    .end local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v17    # "currentListSize":I
    .restart local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v3    # "currentListSize":I
    :cond_2
    move-object/from16 v16, v1

    move/from16 v17, v3

    const/4 v3, 0x1

    .end local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v3    # "currentListSize":I
    .restart local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v17    # "currentListSize":I
    new-instance v1, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    sub-int v8, v17, v5

    sub-int/2addr v8, v3

    invoke-direct {v1, v5, v8, v3}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 902
    .end local v12    # "postponedUpdate":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .end local v14    # "newPos":I
    :goto_4
    move/from16 v3, v17

    goto :goto_5

    .line 904
    .end local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v17    # "currentListSize":I
    .restart local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v3    # "currentListSize":I
    :cond_3
    move-object/from16 v16, v1

    move/from16 v17, v3

    const/4 v3, 0x1

    .end local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v3    # "currentListSize":I
    .restart local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v17    # "currentListSize":I
    invoke-virtual {v2, v5, v3}, Landroid/support/v7/util/BatchingListUpdateCallback;->onRemoved(II)V

    .line 905
    add-int/lit8 v3, v17, -0x1

    .line 907
    .end local v13    # "status":I
    .end local v17    # "currentListSize":I
    .restart local v3    # "currentListSize":I
    :goto_5
    move-object/from16 v1, v16

    const/4 v8, 0x1

    goto :goto_2

    .line 877
    .end local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    :cond_4
    move-object/from16 v16, v1

    move/from16 v17, v3

    .line 908
    .end local v1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    :goto_6
    if-le v6, v11, :cond_8

    .line 909
    add-int/lit8 v6, v6, -0x1

    .line 911
    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v1, v1, v6

    .line 912
    .local v1, "status":I
    and-int/lit8 v8, v1, 0xc

    if-eqz v8, :cond_7

    .line 915
    shr-int/lit8 v8, v1, 0x4

    .line 917
    .local v8, "oldPos":I
    const/4 v13, 0x1

    invoke-static {v4, v8, v13}, Landroid/support/v7/util/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v14

    .line 920
    .local v14, "postponedUpdate":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    if-nez v14, :cond_5

    .line 922
    new-instance v13, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    sub-int v15, v3, v5

    invoke-direct {v13, v6, v15, v12}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_7

    .line 931
    :cond_5
    iget v13, v14, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v13, v3, v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    .line 932
    .local v13, "updatedOldPos":I
    invoke-virtual {v2, v13, v5}, Landroid/support/v7/util/BatchingListUpdateCallback;->onMoved(II)V

    .line 933
    and-int/lit8 v17, v1, 0x4

    if-eqz v17, :cond_6

    .line 934
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v8, v6}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v12

    .line 935
    .local v12, "changePayload":Ljava/lang/Object;
    invoke-virtual {v2, v5, v15, v12}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 938
    .end local v8    # "oldPos":I
    .end local v12    # "changePayload":Ljava/lang/Object;
    .end local v13    # "updatedOldPos":I
    .end local v14    # "postponedUpdate":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_6
    :goto_7
    goto :goto_8

    .line 940
    :cond_7
    const/4 v15, 0x1

    invoke-virtual {v2, v5, v15}, Landroid/support/v7/util/BatchingListUpdateCallback;->onInserted(II)V

    .line 941
    add-int/lit8 v3, v3, 0x1

    .line 943
    .end local v1    # "status":I
    :goto_8
    const/4 v12, 0x0

    goto :goto_6

    .line 945
    :cond_8
    iget v1, v9, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    .line 946
    .end local v5    # "posX":I
    .local v1, "posX":I
    iget v5, v9, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    .line 947
    .end local v6    # "posY":I
    .local v5, "posY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    iget v8, v9, Landroid/support/v7/util/DiffUtil$Diagonal;->size:I

    if-ge v6, v8, :cond_a

    .line 949
    iget-object v8, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v8, v8, v1

    and-int/lit8 v8, v8, 0xf

    const/4 v12, 0x2

    if-ne v8, v12, :cond_9

    .line 950
    iget-object v8, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v8, v1, v5}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    .line 951
    .local v8, "changePayload":Ljava/lang/Object;
    const/4 v15, 0x1

    invoke-virtual {v2, v1, v15, v8}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_a

    .line 949
    .end local v8    # "changePayload":Ljava/lang/Object;
    :cond_9
    const/4 v15, 0x1

    .line 953
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 954
    add-int/lit8 v5, v5, 0x1

    .line 947
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v15, 0x1

    .line 957
    .end local v6    # "i":I
    iget v1, v9, Landroid/support/v7/util/DiffUtil$Diagonal;->x:I

    .line 958
    iget v6, v9, Landroid/support/v7/util/DiffUtil$Diagonal;->y:I

    .line 870
    .end local v5    # "posY":I
    .end local v9    # "diagonal":Landroid/support/v7/util/DiffUtil$Diagonal;
    .end local v10    # "endX":I
    .end local v11    # "endY":I
    .local v6, "posY":I
    add-int/lit8 v7, v7, -0x1

    move v5, v1

    move-object/from16 v1, v16

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 960
    .end local v7    # "diagonalIndex":I
    .end local v16    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v1, "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v5, "posX":I
    :cond_b
    invoke-virtual {v2}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 961
    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 833
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 834
    return-void
.end method

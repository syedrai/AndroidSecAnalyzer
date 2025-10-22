.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$Callback;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$CenteredArray;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$Diagonal;,
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$ItemCallback;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/util/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private static backward(Landroid/support/v7/util/DiffUtil$Range;Landroid/support/v7/util/DiffUtil$Callback;Landroid/support/v7/util/DiffUtil$CenteredArray;Landroid/support/v7/util/DiffUtil$CenteredArray;I)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 11
    .param p0, "range"    # Landroid/support/v7/util/DiffUtil$Range;
    .param p1, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p2, "forward"    # Landroid/support/v7/util/DiffUtil$CenteredArray;
    .param p3, "backward"    # Landroid/support/v7/util/DiffUtil$CenteredArray;
    .param p4, "d"    # I

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->newSize()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "checkForSnake":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->oldSize()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->newSize()I

    move-result v3

    sub-int/2addr v2, v3

    .line 274
    .local v2, "delta":I
    neg-int v3, p4

    .local v3, "k":I
    :goto_1
    if-gt v3, p4, :cond_7

    .line 283
    neg-int v4, p4

    if-eq v3, v4, :cond_2

    if-eq v3, p4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p3, v4}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p3, v5}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    goto :goto_2

    .line 288
    :cond_1
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p3, v4}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    .line 289
    .local v4, "startX":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "x":I
    goto :goto_3

    .line 285
    .end local v4    # "startX":I
    .end local v5    # "x":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p3, v4}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    move v5, v4

    .local v5, "startX":I
    move v10, v5

    move v4, v10

    .line 291
    .restart local v4    # "startX":I
    .local v5, "x":I
    :goto_3
    iget v6, p0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    iget v7, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v3

    sub-int/2addr v6, v7

    .line 292
    .local v6, "y":I
    if-eqz p4, :cond_4

    if-eq v5, v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v6, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v7, v6

    .line 294
    .local v7, "startY":I
    :goto_5
    iget v8, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    if-le v5, v8, :cond_5

    iget v8, p0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    if-le v6, v8, :cond_5

    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v6, -0x1

    .line 296
    invoke-virtual {p1, v8, v9}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 297
    add-int/lit8 v5, v5, -0x1

    .line 298
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 301
    :cond_5
    invoke-virtual {p3, v3, v5}, Landroid/support/v7/util/DiffUtil$CenteredArray;->set(II)V

    .line 302
    if-eqz v0, :cond_6

    .line 305
    sub-int v8, v2, v3

    .line 307
    .local v8, "forwardsK":I
    neg-int v9, p4

    if-lt v8, v9, :cond_6

    if-gt v8, p4, :cond_6

    .line 309
    invoke-virtual {p2, v8}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-lt v9, v5, :cond_6

    .line 311
    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 313
    .local v9, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iput v5, v9, Landroid/support/v7/util/DiffUtil$Snake;->startX:I

    .line 314
    iput v6, v9, Landroid/support/v7/util/DiffUtil$Snake;->startY:I

    .line 315
    iput v4, v9, Landroid/support/v7/util/DiffUtil$Snake;->endX:I

    .line 316
    iput v7, v9, Landroid/support/v7/util/DiffUtil$Snake;->endY:I

    .line 317
    iput-boolean v1, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 318
    return-object v9

    .line 274
    .end local v4    # "startX":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "startY":I
    .end local v8    # "forwardsK":I
    .end local v9    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 322
    .end local v3    # "k":I
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;

    .line 106
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 13
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "detectMoves"    # Z

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 124
    .local v0, "oldSize":I
    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 126
    .local v1, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    .line 130
    .local v5, "diagonals":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Diagonal;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    new-instance v3, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v9, v3, 0x2

    .line 138
    .local v9, "max":I
    new-instance v3, Landroid/support/v7/util/DiffUtil$CenteredArray;

    mul-int/lit8 v4, v9, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/support/v7/util/DiffUtil$CenteredArray;-><init>(I)V

    move-object v10, v3

    .line 139
    .local v10, "forward":Landroid/support/v7/util/DiffUtil$CenteredArray;
    new-instance v3, Landroid/support/v7/util/DiffUtil$CenteredArray;

    mul-int/lit8 v4, v9, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/support/v7/util/DiffUtil$CenteredArray;-><init>(I)V

    move-object v11, v3

    .line 142
    .local v11, "backward":Landroid/support/v7/util/DiffUtil$CenteredArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 143
    .local v12, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$Range;

    .line 145
    .local v3, "range":Landroid/support/v7/util/DiffUtil$Range;
    invoke-static {v3, p0, v10, v11}, Landroid/support/v7/util/DiffUtil;->midPoint(Landroid/support/v7/util/DiffUtil$Range;Landroid/support/v7/util/DiffUtil$Callback;Landroid/support/v7/util/DiffUtil$CenteredArray;Landroid/support/v7/util/DiffUtil$CenteredArray;)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v4

    .line 146
    .local v4, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {v4}, Landroid/support/v7/util/DiffUtil$Snake;->diagonalSize()I

    move-result v6

    if-lez v6, :cond_0

    .line 149
    invoke-virtual {v4}, Landroid/support/v7/util/DiffUtil$Snake;->toDiagonal()Landroid/support/v7/util/DiffUtil$Diagonal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    goto :goto_1

    .line 153
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 152
    invoke-interface {v12, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/util/DiffUtil$Range;

    .line 154
    .local v6, "left":Landroid/support/v7/util/DiffUtil$Range;
    :goto_1
    iget v7, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 155
    iget v7, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 156
    iget v7, v4, Landroid/support/v7/util/DiffUtil$Snake;->startX:I

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 157
    iget v7, v4, Landroid/support/v7/util/DiffUtil$Snake;->startY:I

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 158
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    move-object v7, v3

    .line 163
    .local v7, "right":Landroid/support/v7/util/DiffUtil$Range;
    iget v8, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    iput v8, v7, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 164
    iget v8, v3, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    iput v8, v7, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 165
    iget v8, v4, Landroid/support/v7/util/DiffUtil$Snake;->endX:I

    iput v8, v7, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 166
    iget v8, v4, Landroid/support/v7/util/DiffUtil$Snake;->endY:I

    iput v8, v7, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 167
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v6    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v7    # "right":Landroid/support/v7/util/DiffUtil$Range;
    goto :goto_2

    .line 169
    :cond_2
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v3    # "range":Landroid/support/v7/util/DiffUtil$Range;
    .end local v4    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_2
    goto :goto_0

    .line 174
    :cond_3
    sget-object v3, Landroid/support/v7/util/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    new-instance v3, Landroid/support/v7/util/DiffUtil$DiffResult;

    .line 177
    invoke-virtual {v10}, Landroid/support/v7/util/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v6

    invoke-virtual {v11}, Landroid/support/v7/util/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v7

    move-object v4, p0

    move v8, p1

    .end local p0    # "cb":Landroid/support/v7/util/DiffUtil$Callback;
    .end local p1    # "detectMoves":Z
    .local v4, "cb":Landroid/support/v7/util/DiffUtil$Callback;
    .local v8, "detectMoves":Z
    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    .line 176
    return-object v3
.end method

.method private static forward(Landroid/support/v7/util/DiffUtil$Range;Landroid/support/v7/util/DiffUtil$Callback;Landroid/support/v7/util/DiffUtil$CenteredArray;Landroid/support/v7/util/DiffUtil$CenteredArray;I)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 17
    .param p0, "range"    # Landroid/support/v7/util/DiffUtil$Range;
    .param p1, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p2, "forward"    # Landroid/support/v7/util/DiffUtil$CenteredArray;
    .param p3, "backward"    # Landroid/support/v7/util/DiffUtil$CenteredArray;
    .param p4, "d"    # I

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0}, Landroid/support/v7/util/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/util/DiffUtil$Range;->newSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 215
    .local v3, "checkForSnake":Z
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/util/DiffUtil$Range;->oldSize()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v7/util/DiffUtil$Range;->newSize()I

    move-result v7

    sub-int/2addr v6, v7

    .line 216
    .local v6, "delta":I
    neg-int v7, v2

    .local v7, "k":I
    :goto_1
    if-gt v7, v2, :cond_a

    .line 223
    neg-int v8, v2

    if-eq v7, v8, :cond_2

    if-eq v7, v2, :cond_1

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-le v8, v9, :cond_1

    goto :goto_2

    .line 228
    :cond_1
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v1, v8}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    .line 229
    .local v8, "startX":I
    add-int/lit8 v9, v8, 0x1

    .local v9, "x":I
    goto :goto_3

    .line 225
    .end local v8    # "startX":I
    .end local v9    # "x":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    move v9, v8

    .local v9, "startX":I
    move/from16 v16, v9

    move/from16 v8, v16

    .line 231
    .restart local v8    # "startX":I
    .local v9, "x":I
    :goto_3
    iget v10, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iget v11, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    sub-int v11, v9, v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    .line 232
    .local v10, "y":I
    if-eqz v2, :cond_4

    if-eq v9, v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v10, -0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v11, v10

    .line 234
    .local v11, "startY":I
    :goto_5
    iget v12, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    if-ge v9, v12, :cond_5

    iget v12, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    if-ge v10, v12, :cond_5

    .line 236
    move-object/from16 v12, p1

    invoke-virtual {v12, v9, v10}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 237
    add-int/lit8 v9, v9, 0x1

    .line 238
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 234
    :cond_5
    move-object/from16 v12, p1

    .line 241
    :cond_6
    invoke-virtual {v1, v7, v9}, Landroid/support/v7/util/DiffUtil$CenteredArray;->set(II)V

    .line 242
    if-eqz v3, :cond_8

    .line 245
    sub-int v13, v6, v7

    .line 247
    .local v13, "backwardsK":I
    neg-int v14, v2

    add-int/2addr v14, v5

    if-lt v13, v14, :cond_7

    add-int/lit8 v14, v2, -0x1

    if-gt v13, v14, :cond_7

    .line 249
    move-object/from16 v14, p3

    invoke-virtual {v14, v13}, Landroid/support/v7/util/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    if-gt v15, v9, :cond_9

    .line 251
    new-instance v5, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v5}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 252
    .local v5, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iput v8, v5, Landroid/support/v7/util/DiffUtil$Snake;->startX:I

    .line 253
    iput v11, v5, Landroid/support/v7/util/DiffUtil$Snake;->startY:I

    .line 254
    iput v9, v5, Landroid/support/v7/util/DiffUtil$Snake;->endX:I

    .line 255
    iput v10, v5, Landroid/support/v7/util/DiffUtil$Snake;->endY:I

    .line 256
    iput-boolean v4, v5, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 257
    return-object v5

    .line 247
    .end local v5    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_7
    move-object/from16 v14, p3

    goto :goto_6

    .line 242
    .end local v13    # "backwardsK":I
    :cond_8
    move-object/from16 v14, p3

    .line 216
    .end local v8    # "startX":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "startY":I
    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v12, p1

    move-object/from16 v14, p3

    .line 261
    .end local v7    # "k":I
    const/4 v4, 0x0

    return-object v4
.end method

.method private static midPoint(Landroid/support/v7/util/DiffUtil$Range;Landroid/support/v7/util/DiffUtil$Callback;Landroid/support/v7/util/DiffUtil$CenteredArray;Landroid/support/v7/util/DiffUtil$CenteredArray;)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 4
    .param p0, "range"    # Landroid/support/v7/util/DiffUtil$Range;
    .param p1, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p2, "forward"    # Landroid/support/v7/util/DiffUtil$CenteredArray;
    .param p3, "backward"    # Landroid/support/v7/util/DiffUtil$CenteredArray;

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->oldSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->newSize()I

    move-result v0

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/util/DiffUtil$Range;->newSize()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 193
    .local v0, "max":I
    iget v3, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    invoke-virtual {p2, v2, v3}, Landroid/support/v7/util/DiffUtil$CenteredArray;->set(II)V

    .line 194
    iget v3, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    invoke-virtual {p3, v2, v3}, Landroid/support/v7/util/DiffUtil$CenteredArray;->set(II)V

    .line 195
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 196
    invoke-static {p0, p1, p2, p3, v2}, Landroid/support/v7/util/DiffUtil;->forward(Landroid/support/v7/util/DiffUtil$Range;Landroid/support/v7/util/DiffUtil$Callback;Landroid/support/v7/util/DiffUtil$CenteredArray;Landroid/support/v7/util/DiffUtil$CenteredArray;I)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v3

    .line 197
    .local v3, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v3, :cond_1

    .line 198
    return-object v3

    .line 200
    :cond_1
    invoke-static {p0, p1, p2, p3, v2}, Landroid/support/v7/util/DiffUtil;->backward(Landroid/support/v7/util/DiffUtil$Range;Landroid/support/v7/util/DiffUtil$Callback;Landroid/support/v7/util/DiffUtil$CenteredArray;Landroid/support/v7/util/DiffUtil$CenteredArray;I)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_2

    .line 202
    return-object v3

    .line 195
    .end local v3    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "d":I
    :cond_3
    return-object v1

    .line 190
    .end local v0    # "max":I
    :cond_4
    :goto_1
    return-object v1
.end method

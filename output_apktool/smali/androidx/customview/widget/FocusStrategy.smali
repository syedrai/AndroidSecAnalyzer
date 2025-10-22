.class Landroidx/customview/widget/FocusStrategy;
.super Ljava/lang/Object;
.source "FocusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/FocusStrategy$CollectionAdapter;,
        Landroidx/customview/widget/FocusStrategy$SequentialComparator;,
        Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .line 244
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 245
    .local v0, "rect1InSrcBeam":Z
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 248
    .local v1, "rect2InSrcBeam":Z
    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 259
    return v4

    .line 264
    :cond_1
    const/16 v3, 0x11

    if-eq p0, v3, :cond_4

    const/16 v3, 0x42

    if-ne p0, v3, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 273
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-ge v3, v5, :cond_3

    const/4 v2, 0x1

    .line 272
    :cond_3
    return v2

    .line 265
    :cond_4
    :goto_0
    return v4

    .line 249
    :cond_5
    :goto_1
    return v2
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "direction"    # I
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 327
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 330
    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .locals 7
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    .line 146
    .local p0, "focusables":Ljava/lang/Object;, "TL;"
    .local p1, "collectionAdapter":Landroidx/customview/widget/FocusStrategy$CollectionAdapter;, "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<TL;TT;>;"
    .local p2, "adapter":Landroidx/customview/widget/FocusStrategy$BoundsAdapter;, "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<TT;>;"
    .local p3, "focused":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 148
    .local v0, "bestCandidateRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    sparse-switch p5, :sswitch_data_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :sswitch_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 160
    goto :goto_0

    .line 153
    :sswitch_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 154
    goto :goto_0

    .line 156
    :sswitch_2
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 157
    goto :goto_0

    .line 150
    :sswitch_3
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 151
    nop

    .line 166
    :goto_0
    const/4 v1, 0x0

    .line 168
    .local v1, "closest":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v2

    .line 169
    .local v2, "count":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 170
    .local v3, "focusableRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 171
    invoke-interface {p1, p0, v4}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 172
    .local v5, "focusable":Ljava/lang/Object;, "TT;"
    if-ne v5, p3, :cond_0

    .line 173
    goto :goto_2

    .line 177
    :cond_0
    invoke-interface {p2, v5, v3}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 178
    invoke-static {p5, p4, v3, v0}, Landroidx/customview/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    move-object v1, v5

    .line 170
    .end local v5    # "focusable":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    .end local v4    # "i":I
    :cond_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .locals 5
    .param p4, "direction"    # I
    .param p5, "isLayoutRtl"    # Z
    .param p6, "wrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "TT;>;TT;IZZ)TT;"
        }
    .end annotation

    .line 41
    .local p0, "focusables":Ljava/lang/Object;, "TL;"
    .local p1, "collectionAdapter":Landroidx/customview/widget/FocusStrategy$CollectionAdapter;, "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<TL;TT;>;"
    .local p2, "adapter":Landroidx/customview/widget/FocusStrategy$BoundsAdapter;, "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<TT;>;"
    .local p3, "focused":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v0

    .line 42
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v1, "sortedFocusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 44
    invoke-interface {p1, p0, v2}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    invoke-direct {v2, p5, p2}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    .line 48
    .local v2, "comparator":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    packed-switch p4, :pswitch_data_0

    .line 56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :pswitch_0
    invoke-static {p3, v1, p6}, Landroidx/customview/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 54
    :pswitch_1
    invoke-static {p3, v1, p6}, Landroidx/customview/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "wrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 62
    .local p0, "focused":Ljava/lang/Object;, "TT;"
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 66
    .local v0, "count":I
    if-nez p0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 67
    .local v1, "position":I
    if-ge v1, v0, :cond_1

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 69
    :cond_1
    if-eqz p2, :cond_2

    if-lez v0, :cond_2

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 72
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "wrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 77
    .local p0, "focused":Ljava/lang/Object;, "TT;"
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    .local v0, "count":I
    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 82
    .local v1, "position":I
    if-ltz v1, :cond_1

    .line 83
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 84
    :cond_1
    if-eqz p2, :cond_2

    if-lez v0, :cond_2

    .line 85
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 87
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getWeightedDistanceFor(II)I
    .locals 2
    .param p0, "majorAxisDistance"    # I
    .param p1, "minorAxisDistance"    # I

    .line 284
    mul-int/lit8 v0, p0, 0xd

    mul-int v0, v0, p0

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "candidate"    # Landroid/graphics/Rect;
    .param p3, "currentBest"    # Landroid/graphics/Rect;

    .line 204
    invoke-static {p1, p2, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 205
    return v1

    .line 210
    :cond_0
    invoke-static {p1, p3, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 211
    return v2

    .line 215
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    return v2

    .line 220
    :cond_2
    invoke-static {p0, p1, p3, p2}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    return v1

    .line 226
    :cond_3
    nop

    .line 227
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 228
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 226
    invoke-static {v0, v3}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v0

    .line 229
    .local v0, "candidateDist":I
    nop

    .line 230
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 231
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 229
    invoke-static {v3, v4}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v3

    .line 232
    .local v3, "currentBestDist":I
    if-ge v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p0, "srcRect"    # Landroid/graphics/Rect;
    .param p1, "destRect"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 298
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_0
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 303
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_3

    :cond_2
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 306
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_4

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_5

    :cond_4
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 300
    :sswitch_3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_6

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_7

    :cond_6
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "direction"    # I
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 344
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 348
    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 350
    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 346
    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 366
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 371
    sparse-switch p0, :sswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :sswitch_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 375
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 377
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 373
    :sswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 393
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 399
    sparse-switch p0, :sswitch_data_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :sswitch_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 403
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 405
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    .line 401
    :sswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 424
    sparse-switch p0, :sswitch_data_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 433
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 428
    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 428
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

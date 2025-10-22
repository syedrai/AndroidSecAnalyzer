.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$Scale;,
        Lcom/google/common/math/Quantiles$ScaleAndIndex;,
        Lcom/google/common/math/Quantiles$ScaleAndIndexes;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smcheckIndex(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/math/Quantiles;->checkIndex(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcontainsNaN([D)Z
    .locals 0

    invoke-static {p0}, Lcom/google/common/math/Quantiles;->containsNaN([D)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sminterpolate(DDDD)D
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/common/math/Quantiles;->interpolate(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smintsToDoubles([I)[D
    .locals 0

    invoke-static {p0}, Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlongsToDoubles([J)[D
    .locals 0

    invoke-static {p0}, Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smselectAllInPlace([III[DII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smselectInPlace(I[DII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIndex(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "scale"
        }
    .end annotation

    .line 493
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    .line 497
    return-void

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quantile indexes must be between 0 and the scale, which is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static chooseNextSelection([IIIII)I
    .locals 5
    .param p0, "allRequired"    # [I
    .param p1, "requiredFrom"    # I
    .param p2, "requiredTo"    # I
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "allRequired",
            "requiredFrom",
            "requiredTo",
            "from",
            "to"
        }
    .end annotation

    .line 666
    if-ne p1, p2, :cond_0

    .line 667
    return p1

    .line 672
    :cond_0
    add-int v0, p3, p4

    ushr-int/lit8 v0, v0, 0x1

    .line 679
    .local v0, "centerFloor":I
    move v1, p1

    .line 680
    .local v1, "low":I
    move v2, p2

    .line 681
    .local v2, "high":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_3

    .line 682
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 683
    .local v3, "mid":I
    aget v4, p0, v3

    if-le v4, v0, :cond_1

    .line 684
    move v2, v3

    goto :goto_1

    .line 685
    :cond_1
    aget v4, p0, v3

    if-ge v4, v0, :cond_2

    .line 686
    move v1, v3

    .line 690
    .end local v3    # "mid":I
    :goto_1
    goto :goto_0

    .line 688
    .restart local v3    # "mid":I
    :cond_2
    return v3

    .line 693
    .end local v3    # "mid":I
    :cond_3
    add-int v3, p3, p4

    aget v4, p0, v1

    sub-int/2addr v3, v4

    aget v4, p0, v2

    sub-int/2addr v3, v4

    if-lez v3, :cond_4

    .line 694
    return v2

    .line 696
    :cond_4
    return v1
.end method

.method private static varargs containsNaN([D)Z
    .locals 6
    .param p0, "dataset"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .line 463
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    .line 464
    .local v3, "value":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 465
    const/4 v0, 0x1

    return v0

    .line 463
    .end local v3    # "value":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    return v1
.end method

.method private static interpolate(DDDD)D
    .locals 5
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .param p4, "remainder"    # D
    .param p6, "scale"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lower",
            "upper",
            "remainder",
            "scale"
        }
    .end annotation

    .line 477
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, p0, v2

    if-nez v4, :cond_1

    .line 478
    cmpl-double v4, p2, v0

    if-nez v4, :cond_0

    .line 480
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 483
    :cond_0
    return-wide v2

    .line 485
    :cond_1
    cmpl-double v2, p2, v0

    if-nez v2, :cond_2

    .line 487
    return-wide v0

    .line 489
    :cond_2
    sub-double v0, p2, p0

    mul-double v0, v0, p4

    div-double/2addr v0, p6

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static intsToDoubles([I)[D
    .locals 5
    .param p0, "ints"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ints"
        }
    .end annotation

    .line 509
    array-length v0, p0

    .line 510
    .local v0, "len":I
    new-array v1, v0, [D

    .line 511
    .local v1, "doubles":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 512
    aget v3, p0, v2

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static longsToDoubles([J)[D
    .locals 5
    .param p0, "longs"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longs"
        }
    .end annotation

    .line 500
    array-length v0, p0

    .line 501
    .local v0, "len":I
    new-array v1, v0, [D

    .line 502
    .local v1, "doubles":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 503
    aget-wide v3, p0, v2

    long-to-double v3, v3

    aput-wide v3, v1, v2

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static median()Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .locals 2

    .line 143
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$Scale;->index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;

    move-result-object v0

    return-object v0
.end method

.method private static movePivotToStartOfSlice([DII)V
    .locals 10
    .param p0, "array"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "from",
            "to"
        }
    .end annotation

    .line 604
    add-int v0, p1, p2

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    .line 609
    .local v0, "mid":I
    aget-wide v2, p0, p2

    aget-wide v4, p0, v0

    const/4 v6, 0x0

    cmpg-double v7, v2, v4

    if-gez v7, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 610
    .local v2, "toLessThanMid":Z
    :goto_0
    aget-wide v3, p0, v0

    aget-wide v7, p0, p1

    cmpg-double v5, v3, v7

    if-gez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 611
    .local v3, "midLessThanFrom":Z
    :goto_1
    aget-wide v4, p0, p2

    aget-wide v7, p0, p1

    cmpg-double v9, v4, v7

    if-gez v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 612
    .local v1, "toLessThanFrom":Z
    :goto_2
    if-ne v2, v3, :cond_3

    .line 614
    invoke-static {p0, v0, p1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    goto :goto_3

    .line 615
    :cond_3
    if-eq v2, v1, :cond_4

    .line 617
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 620
    :cond_4
    :goto_3
    return-void
.end method

.method private static partition([DII)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "from",
            "to"
        }
    .end annotation

    .line 577
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->movePivotToStartOfSlice([DII)V

    .line 578
    aget-wide v0, p0, p1

    .line 582
    .local v0, "pivot":D
    move v2, p2

    .line 583
    .local v2, "partitionPoint":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-le v3, p1, :cond_1

    .line 584
    aget-wide v4, p0, v3

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    .line 585
    invoke-static {p0, v2, v3}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 586
    add-int/lit8 v2, v2, -0x1

    .line 583
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 593
    .end local v3    # "i":I
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 594
    return v2
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    .line 153
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$Scale;
    .locals 1

    .line 148
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$Scale;
    .locals 2
    .param p0, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/google/common/math/Quantiles$Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/math/Quantiles$Scale;-><init>(ILcom/google/common/math/Quantiles-IA;)V

    return-object v0
.end method

.method private static selectAllInPlace([III[DII)V
    .locals 9
    .param p0, "allRequired"    # [I
    .param p1, "requiredFrom"    # I
    .param p2, "requiredTo"    # I
    .param p3, "array"    # [D
    .param p4, "from"    # I
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "allRequired",
            "requiredFrom",
            "requiredTo",
            "array",
            "from",
            "to"
        }
    .end annotation

    .line 630
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/common/math/Quantiles;->chooseNextSelection([IIIII)I

    move-result v0

    .line 631
    .local v0, "requiredChosen":I
    aget v1, p0, v0

    .line 634
    .local v1, "required":I
    invoke-static {v1, p3, p4, p5}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    .line 637
    add-int/lit8 v2, v0, -0x1

    move v5, v2

    .line 638
    .local v5, "requiredBelow":I
    :goto_0
    if-lt v5, p1, :cond_0

    aget v2, p0, v5

    if-ne v2, v1, :cond_0

    .line 639
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 641
    :cond_0
    if-lt v5, p1, :cond_1

    .line 642
    add-int/lit8 v8, v1, -0x1

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move v7, p4

    .end local p0    # "allRequired":[I
    .end local p1    # "requiredFrom":I
    .end local p3    # "array":[D
    .end local p4    # "from":I
    .local v3, "allRequired":[I
    .local v4, "requiredFrom":I
    .local v6, "array":[D
    .local v7, "from":I
    invoke-static/range {v3 .. v8}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    .end local v3    # "allRequired":[I
    .end local v6    # "array":[D
    .restart local p0    # "allRequired":[I
    .restart local p3    # "array":[D
    goto :goto_1

    .line 641
    .end local v4    # "requiredFrom":I
    .end local v7    # "from":I
    .restart local p1    # "requiredFrom":I
    .restart local p4    # "from":I
    :cond_1
    move v4, p1

    move v7, p4

    .line 646
    .end local p1    # "requiredFrom":I
    .end local p4    # "from":I
    .restart local v4    # "requiredFrom":I
    .restart local v7    # "from":I
    :goto_1
    add-int/lit8 p1, v0, 0x1

    .line 647
    .local p1, "requiredAbove":I
    :goto_2
    if-gt p1, p2, :cond_2

    aget p4, p0, p1

    if-ne p4, v1, :cond_2

    .line 648
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 650
    :cond_2
    if-gt p1, p2, :cond_3

    .line 651
    add-int/lit8 p4, v1, 0x1

    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    .line 653
    :cond_3
    return-void
.end method

.method private static selectInPlace(I[DII)V
    .locals 7
    .param p0, "required"    # I
    .param p1, "array"    # [D
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "required",
            "array",
            "from",
            "to"
        }
    .end annotation

    .line 541
    if-ne p0, p2, :cond_3

    .line 542
    move v0, p2

    .line 543
    .local v0, "min":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "index":I
    :goto_0
    if-gt v1, p3, :cond_1

    .line 544
    aget-wide v2, p1, v0

    aget-wide v4, p1, v1

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 545
    move v0, v1

    .line 543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "index":I
    :cond_1
    if-eq v0, p2, :cond_2

    .line 549
    invoke-static {p1, v0, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 551
    :cond_2
    return-void

    .line 556
    .end local v0    # "min":I
    :cond_3
    :goto_1
    if-le p3, p2, :cond_6

    .line 557
    invoke-static {p1, p2, p3}, Lcom/google/common/math/Quantiles;->partition([DII)I

    move-result v0

    .line 558
    .local v0, "partitionPoint":I
    if-lt v0, p0, :cond_4

    .line 559
    add-int/lit8 p3, v0, -0x1

    .line 561
    :cond_4
    if-gt v0, p0, :cond_5

    .line 562
    add-int/lit8 p2, v0, 0x1

    .line 564
    .end local v0    # "partitionPoint":I
    :cond_5
    goto :goto_1

    .line 565
    :cond_6
    return-void
.end method

.method private static swap([DII)V
    .locals 4
    .param p0, "array"    # [D
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "i",
            "j"
        }
    .end annotation

    .line 702
    aget-wide v0, p0, p1

    .line 703
    .local v0, "temp":D
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 704
    aput-wide v0, p0, p2

    .line 705
    return-void
.end method

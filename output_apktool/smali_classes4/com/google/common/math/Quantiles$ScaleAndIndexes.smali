.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 4
    .param p1, "scale"    # I
    .param p2, "indexes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scale",
            "indexes"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p2, v2

    .line 329
    .local v3, "index":I
    invoke-static {v3, p1}, Lcom/google/common/math/Quantiles;->-$$Nest$smcheckIndex(II)V

    .line 328
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Indexes must be a non empty array"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 332
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 333
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 334
    return-void
.end method

.method synthetic constructor <init>(I[ILcom/google/common/math/Quantiles-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 348
    .local p1, "dataset":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([D)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([I)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->-$$Nest$smintsToDoubles([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([J)Ljava/util/Map;
    .locals 1
    .param p1, "dataset"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->-$$Nest$smlongsToDoubles([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .locals 19
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    array-length v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v1, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 406
    invoke-static {v4}, Lcom/google/common/math/Quantiles;->-$$Nest$smcontainsNaN([D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 408
    .local v1, "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    iget-object v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v5, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget v6, v3, v2

    .line 409
    .local v6, "index":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v6    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    :cond_1
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 419
    .end local v1    # "nanMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    :cond_2
    iget-object v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v1, v1

    new-array v7, v1, [I

    .line 420
    .local v7, "quotients":[I
    iget-object v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v1, v1

    new-array v8, v1, [I

    .line 422
    .local v8, "remainders":[I
    iget-object v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 423
    .local v1, "requiredSelections":[I
    const/4 v5, 0x0

    .line 424
    .local v5, "requiredSelectionsCount":I
    const/4 v6, 0x0

    move v9, v5

    .end local v5    # "requiredSelectionsCount":I
    .local v6, "i":I
    .local v9, "requiredSelectionsCount":I
    :goto_2
    iget-object v5, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v5, v5

    if-ge v6, v5, :cond_4

    .line 427
    iget-object v5, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v5, v5, v6

    int-to-long v10, v5

    array-length v5, v4

    sub-int/2addr v5, v3

    int-to-long v12, v5

    mul-long v10, v10, v12

    .line 432
    .local v10, "numerator":J
    iget v5, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v12, v5

    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v12, v13, v5}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v12

    long-to-int v5, v12

    .line 433
    .local v5, "quotient":I
    int-to-long v12, v5

    iget v14, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v14, v14

    mul-long v12, v12, v14

    sub-long v12, v10, v12

    long-to-int v13, v12

    .line 434
    .local v13, "remainder":I
    aput v5, v7, v6

    .line 435
    aput v13, v8, v6

    .line 436
    aput v5, v1, v9

    .line 437
    add-int/lit8 v9, v9, 0x1

    .line 438
    if-eqz v13, :cond_3

    .line 439
    add-int/lit8 v12, v5, 0x1

    aput v12, v1, v9

    .line 440
    add-int/lit8 v9, v9, 0x1

    .line 424
    .end local v5    # "quotient":I
    .end local v10    # "numerator":J
    .end local v13    # "remainder":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 443
    .end local v6    # "i":I
    :cond_4
    invoke-static {v1, v2, v9}, Ljava/util/Arrays;->sort([III)V

    .line 444
    const/4 v2, 0x1

    add-int/lit8 v3, v9, -0x1

    array-length v5, v4

    add-int/lit8 v6, v5, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/common/math/Quantiles;->-$$Nest$smselectAllInPlace([III[DII)V

    .line 446
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 447
    .local v2, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v4, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 448
    aget v4, v7, v3

    .line 449
    .local v4, "quotient":I
    aget v5, v8, v3

    .line 450
    .local v5, "remainder":I
    if-nez v5, :cond_5

    .line 451
    iget-object v6, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v10, p1, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v1

    goto :goto_4

    .line 453
    :cond_5
    iget-object v6, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    aget v6, v6, v3

    .line 454
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v10, p1, v4

    add-int/lit8 v12, v4, 0x1

    aget-wide v12, p1, v12

    int-to-double v14, v5

    move-object/from16 v18, v1

    .end local v1    # "requiredSelections":[I
    .local v18, "requiredSelections":[I
    iget v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-double v0, v1

    move-wide/from16 v16, v0

    invoke-static/range {v10 .. v17}, Lcom/google/common/math/Quantiles;->-$$Nest$sminterpolate(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 453
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .end local v4    # "quotient":I
    .end local v5    # "remainder":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    goto :goto_3

    .line 457
    .end local v3    # "i":I
    .end local v18    # "requiredSelections":[I
    .restart local v1    # "requiredSelections":[I
    :cond_6
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanComparator;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;,
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smindexOf([ZZII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlastIndexOf([ZZII)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backingArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 388
    array-length v0, p0

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    return-object v0
.end method

.method private static checkNoOverflow(J)I
    .locals 3
    .param p0, "result"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 257
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "the total number of elements (%s) in the arrays must fit in an int"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 261
    long-to-int v0, p0

    return v0
.end method

.method public static compare(ZZ)I
    .locals 1
    .param p0, "a"    # Z
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[Z)[Z
    .locals 9
    .param p0, "arrays"    # [[Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrays"
        }
    .end annotation

    .line 243
    const-wide/16 v0, 0x0

    .line 244
    .local v0, "length":J
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p0, v4

    .line 245
    .local v5, "array":[Z
    array-length v6, v5

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 244
    .end local v5    # "array":[Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->checkNoOverflow(J)I

    move-result v2

    new-array v2, v2, [Z

    .line 248
    .local v2, "result":[Z
    const/4 v4, 0x0

    .line 249
    .local v4, "pos":I
    array-length v5, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p0, v6

    .line 250
    .local v7, "array":[Z
    array-length v8, v7

    invoke-static {v7, v3, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    array-length v8, v7

    add-int/2addr v4, v8

    .line 249
    .end local v7    # "array":[Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 253
    :cond_1
    return-object v2
.end method

.method public static contains([ZZ)Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "target"
        }
    .end annotation

    .line 148
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    .line 149
    .local v3, "value":Z
    if-ne v3, p1, :cond_0

    .line 150
    const/4 v0, 0x1

    return v0

    .line 148
    .end local v3    # "value":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return v1
.end method

.method public static varargs countTrue([Z)I
    .locals 4
    .param p0, "values"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-boolean v3, p0, v2

    .line 532
    .local v3, "value":Z
    if-eqz v3, :cond_0

    .line 533
    add-int/lit8 v0, v0, 0x1

    .line 531
    .end local v3    # "value":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    :cond_1
    return v0
.end method

.method public static ensureCapacity([ZII)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "minLength"    # I
    .param p2, "padding"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "minLength",
            "padding"
        }
    .end annotation

    .line 278
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 279
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 280
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static falseFirst()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->FALSE_FIRST:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/google/common/primitives/Booleans$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZ)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "target"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static indexOf([ZZII)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "target",
            "start",
            "end"
        }
    .end annotation

    .line 173
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 174
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 175
    return v0

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([Z[Z)I
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "target"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "target"
        }
    .end annotation

    .line 192
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    array-length v0, p1

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 200
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 201
    add-int v2, v0, v1

    aget-boolean v2, p0, v2

    aget-boolean v3, p1, v1

    if-eq v2, v3, :cond_1

    .line 202
    nop

    .line 199
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    .end local v1    # "j":I
    :cond_2
    return v0

    .line 207
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "separator",
            "array"
        }
    .end annotation

    .line 293
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    array-length v0, p1

    if-nez v0, :cond_0

    .line 295
    const-string v0, ""

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([ZZ)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "target"
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([ZZII)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "target",
            "start",
            "end"
        }
    .end annotation

    .line 224
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 225
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 226
    return v0

    .line 224
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[Z>;"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static reverse([Z)V
    .locals 2
    .param p0, "array"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 546
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    .line 548
    return-void
.end method

.method public static reverse([ZII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 561
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 563
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 564
    aget-boolean v2, p0, v0

    .line 565
    .local v2, "tmp":Z
    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    .line 566
    aput-boolean v2, p0, v1

    .line 563
    .end local v2    # "tmp":Z
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 568
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method public static rotate([ZI)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "distance"
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->rotate([ZIII)V

    .line 582
    return-void
.end method

.method public static rotate([ZIII)V
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "distance"    # I
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "distance",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 598
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    array-length v0, p0

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 600
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 601
    return-void

    .line 604
    :cond_0
    sub-int v0, p3, p2

    .line 607
    .local v0, "length":I
    neg-int v1, p1

    rem-int/2addr v1, v0

    .line 608
    .local v1, "m":I
    if-gez v1, :cond_1

    add-int v2, v1, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 610
    .end local v1    # "m":I
    .local v2, "m":I
    :goto_0
    add-int v1, v2, p2

    .line 611
    .local v1, "newFirstIndex":I
    if-ne v1, p2, :cond_2

    .line 612
    return-void

    .line 615
    :cond_2
    invoke-static {p0, p2, v1}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    .line 616
    invoke-static {p0, v1, p3}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    .line 617
    invoke-static {p0, p2, p3}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    .line 618
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .line 360
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v0, :cond_0

    .line 361
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->toBooleanArray()[Z

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 366
    .local v1, "len":I
    new-array v2, v1, [Z

    .line 367
    .local v2, "array":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 369
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static trueFirst()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->TRUE_FIRST:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

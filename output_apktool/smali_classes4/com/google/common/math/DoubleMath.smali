.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 281
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 323
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFinite(D)D
    .locals 1
    .param p0, "argument"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argument"
        }
    .end annotation

    .line 527
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 528
    return-wide p0
.end method

.method public static factorial(I)D
    .locals 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 306
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 307
    const/16 v0, 0xaa

    if-le p0, v0, :cond_0

    .line 308
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 312
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 313
    .local v0, "accum":D
    and-int/lit8 v2, p0, -0x10

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 314
    int-to-double v3, v2

    mul-double v0, v0, v3

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v3, p0, 0x4

    aget-wide v3, v2, v3

    mul-double v3, v3, v0

    return-wide v3
.end method

.method public static fuzzyCompare(DDD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "tolerance"
        }
    .end annotation

    .line 385
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    .line 388
    const/4 v0, -0x1

    return v0

    .line 389
    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    .line 390
    const/4 v0, 0x1

    return v0

    .line 392
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "tolerance"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "tolerance"
        }
    .end annotation

    .line 364
    const-string/jumbo v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 365
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v2, v0, p4

    if-lez v2, :cond_1

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_1

    .line 368
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 365
    :goto_1
    return v0
.end method

.method public static isMathematicalInteger(D)Z
    .locals 3
    .param p0, "x"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 291
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_0

    .line 293
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 8
    .param p0, "x"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 203
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmpl-double v3, p0, v0

    if-lez v3, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    .line 205
    .local v0, "significand":J
    const-wide/16 v3, 0x1

    sub-long v3, v0, v3

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 207
    .end local v0    # "significand":J
    :cond_1
    return v2
.end method

.method public static log2(D)D
    .locals 4
    .param p0, "x"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 227
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 10
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "mode"
        }
    .end annotation

    .line 243
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "x must be positive and finite"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 245
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const-wide/high16 v1, 0x4330000000000000L    # 4.503599627370496E15

    mul-double v1, v1, p0

    invoke-static {v1, v2, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v1

    add-int/lit8 v1, v1, -0x34

    return v1

    .line 251
    :cond_1
    sget-object v1, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 276
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 270
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v4

    .line 273
    .local v4, "xScaled":D
    mul-double v6, v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_2

    const/4 v2, 0x1

    .line 274
    .local v2, "increment":Z
    :cond_2
    goto :goto_1

    .line 265
    .end local v2    # "increment":Z
    .end local v4    # "xScaled":D
    :pswitch_1
    if-ltz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v2, v1

    .line 266
    .restart local v2    # "increment":Z
    goto :goto_1

    .line 262
    .end local v2    # "increment":Z
    :pswitch_2
    if-gez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v2, v1

    .line 263
    .restart local v2    # "increment":Z
    goto :goto_1

    .line 259
    .end local v2    # "increment":Z
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    xor-int/2addr v1, v3

    move v2, v1

    .line 260
    .restart local v2    # "increment":Z
    goto :goto_1

    .line 253
    .end local v2    # "increment":Z
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 256
    :pswitch_5
    const/4 v2, 0x0

    .line 257
    .restart local v2    # "increment":Z
    nop

    .line 278
    :goto_1
    if-eqz v2, :cond_5

    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/math/DoubleMath;->mean(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 513
    const-wide/16 v0, 0x1

    .line 514
    .local v0, "count":J
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v2

    .line 515
    .local v2, "mean":D
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v4

    .line 517
    .local v4, "value":D
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 519
    sub-double v6, v4, v2

    long-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 520
    .end local v4    # "value":D
    goto :goto_0

    .line 521
    :cond_0
    return-wide v2
.end method

.method public static varargs mean([D)D
    .locals 9
    .param p0, "values"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 412
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Cannot take mean of 0 values"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 413
    const-wide/16 v2, 0x1

    .line 414
    .local v2, "count":J
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    .line 415
    .local v0, "mean":D
    const/4 v4, 0x1

    .local v4, "index":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 416
    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    .line 417
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 419
    aget-wide v5, p0, v4

    sub-double/2addr v5, v0

    long-to-double v7, v2

    div-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    .end local v4    # "index":I
    :cond_1
    return-wide v0
.end method

.method public static varargs mean([I)D
    .locals 6
    .param p0, "values"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 442
    const-wide/16 v0, 0x0

    .line 443
    .local v0, "sum":J
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 444
    aget v3, p0, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    .end local v2    # "index":I
    :cond_1
    long-to-double v2, v0

    array-length v4, p0

    int-to-double v4, v4

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static varargs mean([J)D
    .locals 9
    .param p0, "values"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Cannot take mean of 0 values"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 465
    const-wide/16 v2, 0x1

    .line 466
    .local v2, "count":J
    aget-wide v0, p0, v1

    long-to-double v0, v0

    .line 467
    .local v0, "mean":D
    const/4 v4, 0x1

    .local v4, "index":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 468
    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 470
    aget-wide v5, p0, v4

    long-to-double v5, v5

    sub-double/2addr v5, v0

    long-to-double v7, v2

    div-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 472
    .end local v4    # "index":I
    :cond_1
    return-wide v0
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "mode"
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/16 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 103
    .local v0, "z":D
    sub-double v5, p0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-nez v2, :cond_0

    .line 104
    return-wide p0

    .line 106
    :cond_0
    return-wide v0

    .line 92
    .end local v0    # "z":D
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 93
    .restart local v0    # "z":D
    sub-double v5, p0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-nez v2, :cond_1

    .line 94
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr v2, p0

    return-wide v2

    .line 96
    :cond_1
    return-wide v0

    .line 88
    .end local v0    # "z":D
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    return-wide v0

    .line 81
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    return-wide p0

    .line 84
    :cond_2
    double-to-long v0, p0

    cmpl-double v2, p0, v5

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 78
    :pswitch_4
    return-wide p0

    .line 71
    :pswitch_5
    cmpg-double v0, p0, v5

    if-lez v0, :cond_5

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 74
    :cond_4
    double-to-long v3, p0

    add-long/2addr v3, v1

    long-to-double v0, v3

    return-wide v0

    .line 72
    :cond_5
    :goto_1
    return-wide p0

    .line 64
    :pswitch_6
    cmpl-double v0, p0, v5

    if-gez v0, :cond_7

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 67
    :cond_6
    double-to-long v3, p0

    sub-long/2addr v3, v1

    long-to-double v0, v3

    return-wide v0

    .line 65
    :cond_7
    :goto_2
    return-wide p0

    .line 60
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 61
    return-wide p0

    .line 56
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "input is infinite or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "mode"
        }
    .end annotation

    .line 187
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    .line 188
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/high16 v1, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    .line 189
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 192
    .local v0, "exponent":I
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v1

    .line 193
    .local v1, "significand":J
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v4, v0, -0x34

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 194
    .local v3, "result":Ljava/math/BigInteger;
    const-wide/16 v4, 0x0

    cmpg-double v6, p0, v4

    if-gez v6, :cond_3

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    return-object v4
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 8
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "mode"
        }
    .end annotation

    .line 131
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 132
    .local v0, "z":D
    const-wide v2, -0x3e1fffffffe00000L    # -2.147483649E9

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v3, v0, v6

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    .line 134
    double-to-int v2, v0

    return v2
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 9
    .param p0, "x"    # D
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "mode"
        }
    .end annotation

    .line 158
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    .line 159
    .local v0, "z":D
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-int/2addr v2, v6

    invoke-static {v2, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    .line 161
    double-to-long v2, v0

    return-wide v2
.end method

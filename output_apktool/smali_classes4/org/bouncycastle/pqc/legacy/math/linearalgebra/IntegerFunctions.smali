.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;
.source "IntegerFunctions.java"


# static fields
.field private static final FOUR:Ljava/math/BigInteger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES:[I

.field private static final SMALL_PRIME_PRODUCT:J = 0x8a5b6470af95L

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final jacobiTable:[I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 5
    .param p0, "n"    # I
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "t"
        }
    .end annotation

    .line 910
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 912
    .local v0, "result":Ljava/math/BigInteger;
    if-nez p0, :cond_1

    .line 914
    if-nez p1, :cond_0

    .line 916
    return-object v0

    .line 918
    :cond_0
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 922
    :cond_1
    ushr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_2

    .line 924
    sub-int p1, p0, p1

    .line 927
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_3

    .line 929
    add-int/lit8 v2, v1, -0x1

    sub-int v2, p0, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v1

    .line 930
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static bitCount(I)I
    .locals 2
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "h":I
    :goto_0
    if-eqz p0, :cond_0

    .line 373
    and-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    .line 374
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return v0
.end method

.method public static ceilLog(I)I
    .locals 2
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "log":I
    const/4 v1, 0x1

    .line 225
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 227
    shl-int/lit8 v1, v1, 0x1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return v0
.end method

.method public static ceilLog(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "a"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "result":I
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 206
    .local v1, "p":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_0
    return v0
.end method

.method public static ceilLog256(I)I
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 242
    if-nez p0, :cond_0

    .line 244
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_0
    if-gez p0, :cond_1

    .line 249
    neg-int v0, p0

    .local v0, "m":I
    goto :goto_0

    .line 253
    .end local v0    # "m":I
    :cond_1
    move v0, p0

    .line 256
    .restart local v0    # "m":I
    :goto_0
    const/4 v1, 0x0

    .line 257
    .local v1, "d":I
    :goto_1
    if-lez v0, :cond_2

    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 260
    ushr-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 262
    :cond_2
    return v1
.end method

.method public static ceilLog256(J)I
    .locals 6
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 274
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 276
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_0
    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 281
    neg-long v2, p0

    .local v2, "m":J
    goto :goto_0

    .line 285
    .end local v2    # "m":J
    :cond_1
    move-wide v2, p0

    .line 288
    .restart local v2    # "m":J
    :goto_0
    const/4 v4, 0x0

    .line 289
    .local v4, "d":I
    :goto_1
    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    .line 291
    add-int/lit8 v4, v4, 0x1

    .line 292
    const/16 v5, 0x8

    ushr-long/2addr v2, v5

    goto :goto_1

    .line 294
    :cond_2
    return v4
.end method

.method public static divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;
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

    .line 174
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 182
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static divideAndRound([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "a"    # [Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;
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

    .line 187
    array-length v0, p0

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 188
    .local v0, "out":[Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 190
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static extGCD(II)[I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
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

    .line 162
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 163
    .local v0, "ba":Ljava/math/BigInteger;
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 164
    .local v1, "bb":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 165
    .local v2, "bresult":[Ljava/math/BigInteger;
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 166
    .local v3, "result":[I
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 167
    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 168
    const/4 v4, 0x2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 169
    return-object v3
.end method

.method public static extgcd(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;
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

    .line 513
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 514
    .local v0, "u":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 515
    .local v1, "v":Ljava/math/BigInteger;
    move-object v2, p0

    .line 516
    .local v2, "d":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 518
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 519
    .local v3, "v1":Ljava/math/BigInteger;
    move-object v6, p1

    .line 520
    .local v6, "v3":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-eqz v7, :cond_0

    .line 522
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 523
    .local v7, "tmp":[Ljava/math/BigInteger;
    aget-object v8, v7, v5

    .line 524
    .local v8, "q":Ljava/math/BigInteger;
    aget-object v9, v7, v4

    .line 525
    .local v9, "t3":Ljava/math/BigInteger;
    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 526
    .local v10, "t1":Ljava/math/BigInteger;
    move-object v0, v3

    .line 527
    move-object v2, v6

    .line 528
    move-object v3, v10

    .line 529
    move-object v6, v9

    .line 530
    .end local v7    # "tmp":[Ljava/math/BigInteger;
    .end local v8    # "q":Ljava/math/BigInteger;
    .end local v9    # "t3":Ljava/math/BigInteger;
    .end local v10    # "t1":Ljava/math/BigInteger;
    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 533
    .end local v3    # "v1":Ljava/math/BigInteger;
    .end local v6    # "v3":Ljava/math/BigInteger;
    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/math/BigInteger;

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    return-object v3
.end method

.method public static floatPow(FI)F
    .locals 1
    .param p0, "f"    # F
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "i"
        }
    .end annotation

    .line 1049
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1050
    .local v0, "g":F
    :goto_0
    if-lez p1, :cond_0

    .line 1052
    mul-float v0, v0, p0

    .line 1050
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1054
    :cond_0
    return v0
.end method

.method public static floorLog(I)I
    .locals 2
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "h":I
    if-gtz p0, :cond_0

    .line 328
    const/4 v1, -0x1

    return v1

    .line 330
    :cond_0
    ushr-int/lit8 v1, p0, 0x1

    .line 331
    .local v1, "p":I
    :goto_0
    if-lez v1, :cond_1

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 334
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return v0
.end method

.method public static floorLog(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "a"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 306
    const/4 v0, -0x1

    .line 307
    .local v0, "result":I
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 308
    .local v1, "p":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 310
    add-int/lit8 v0, v0, 0x1

    .line 311
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 313
    :cond_0
    return v0
.end method

.method public static gcd(II)I
    .locals 3
    .param p0, "u"    # I
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 150
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static intRoot(II)F
    .locals 8
    .param p0, "base"    # I
    .param p1, "root"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "root"
        }
    .end annotation

    .line 1022
    div-int v0, p0, p1

    int-to-float v0, v0

    .line 1023
    .local v0, "gNew":F
    const/4 v1, 0x0

    .line 1024
    .local v1, "gOld":F
    const/4 v2, 0x0

    .line 1025
    .local v2, "counter":I
    :goto_0
    sub-float v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    .line 1027
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    .line 1028
    .local v3, "gPow":F
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    add-float v4, v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    .line 1031
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v3

    goto :goto_1

    .line 1033
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1034
    move v1, v0

    .line 1035
    int-to-float v4, p0

    sub-float v4, v3, v4

    int-to-float v5, p1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floatPow(FI)F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v4, v5

    sub-float v0, v1, v4

    .line 1036
    .end local v3    # "gPow":F
    goto :goto_0

    .line 1037
    :cond_1
    return v0
.end method

.method public static integerToOctets(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "val"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1249
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1252
    .local v0, "valBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    .line 1254
    return-object v0

    .line 1257
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 1258
    .local v1, "tmp":[B
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    return-object v1
.end method

.method public static isIncreasing([I)Z
    .locals 3
    .param p0, "a"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1237
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1239
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    aget v2, p0, v0

    if-lt v1, v2, :cond_0

    .line 1241
    const/4 v1, 0x0

    return v1

    .line 1237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isPower(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "p"
        }
    .end annotation

    .line 609
    const/4 v0, -0x1

    if-gtz p0, :cond_0

    .line 611
    return v0

    .line 613
    :cond_0
    const/4 v1, 0x0

    .line 614
    .local v1, "n":I
    move v2, p0

    .line 615
    .local v2, "d":I
    :goto_0
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 617
    rem-int v3, v2, p1

    if-eqz v3, :cond_1

    .line 619
    return v0

    .line 621
    :cond_1
    div-int/2addr v2, p1

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_2
    return v1
.end method

.method public static isPrime(I)Z
    .locals 4
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 671
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_0

    .line 673
    return v0

    .line 675
    :cond_0
    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    .line 677
    return v2

    .line 679
    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    .line 681
    return v0

    .line 683
    :cond_2
    const/16 v1, 0x2a

    if-ge p0, v1, :cond_4

    .line 685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 687
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    aget v3, v3, v1

    if-ne p0, v3, :cond_3

    .line 689
    return v2

    .line 685
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v1    # "i":I
    :cond_4
    rem-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x5

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x7

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0xb

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0xd

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x11

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x13

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x17

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x1d

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x1f

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x25

    if-eqz v1, :cond_6

    rem-int/lit8 v1, p0, 0x29

    if-nez v1, :cond_5

    goto :goto_1

    .line 702
    :cond_5
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0

    .line 699
    :cond_6
    :goto_1
    return v0
.end method

.method public static jacobi(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 10
    .param p0, "A"    # Ljava/math/BigInteger;
    .param p1, "B"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "A",
            "B"
        }
    .end annotation

    .line 61
    const-wide/16 v0, 0x1

    .line 63
    .local v0, "k":J
    const-wide/16 v0, 0x1

    .line 66
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 69
    .local v2, "a":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 72
    .end local v2    # "a":Ljava/math/BigInteger;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    return v2

    .line 77
    :cond_1
    move-object v3, p0

    .line 78
    .local v3, "a":Ljava/math/BigInteger;
    move-object v4, p1

    .line 80
    .local v4, "b":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 82
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    .line 83
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 85
    const-wide/16 v0, -0x1

    .line 89
    :cond_2
    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 90
    .local v5, "v":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 92
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 93
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 98
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    aget v6, v6, v7

    int-to-long v6, v6

    mul-long v0, v0, v6

    .line 101
    :cond_4
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_6

    .line 103
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    neg-long v0, v0

    .line 107
    :cond_5
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    .line 111
    :cond_6
    :goto_1
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-eqz v6, :cond_a

    .line 113
    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 114
    :goto_2
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 116
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 117
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 121
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    aget v6, v6, v8

    int-to-long v8, v6

    mul-long v0, v0, v8

    .line 124
    :cond_8
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_9

    .line 127
    move-object v6, v3

    .line 128
    .local v6, "x":Ljava/math/BigInteger;
    move-object v3, v4

    .line 129
    move-object v4, v6

    .line 130
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 132
    neg-long v0, v0

    .line 135
    .end local v6    # "x":Ljava/math/BigInteger;
    :cond_9
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    .line 138
    :cond_a
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    long-to-int v2, v0

    :cond_b
    return v2
.end method

.method public static leastCommonMultiple([Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "numbers"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numbers"
        }
    .end annotation

    .line 544
    array-length v0, p0

    .line 545
    .local v0, "n":I
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 546
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 548
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 549
    .local v3, "gcd":Ljava/math/BigInteger;
    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 546
    .end local v3    # "gcd":Ljava/math/BigInteger;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static leastDiv(I)I
    .locals 2
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 635
    if-gez p0, :cond_0

    .line 637
    neg-int p0, p0

    .line 639
    :cond_0
    if-nez p0, :cond_1

    .line 641
    const/4 v0, 0x1

    return v0

    .line 643
    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    .line 645
    const/4 v0, 0x2

    return v0

    .line 647
    :cond_2
    const/4 v0, 0x3

    .line 648
    .local v0, "p":I
    :goto_0
    div-int v1, p0, v0

    if-gt v0, v1, :cond_4

    .line 650
    rem-int v1, p0, v0

    if-nez v1, :cond_3

    .line 652
    return v0

    .line 654
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 657
    :cond_4
    return p0
.end method

.method public static log(D)D
    .locals 9
    .param p0, "x"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1066
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 1068
    div-double/2addr v0, p0

    .line 1069
    .local v0, "d":D
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    .line 1070
    .local v2, "result":D
    return-wide v2

    .line 1073
    .end local v0    # "d":D
    .end local v2    # "result":D
    :cond_0
    const/4 v0, 0x0

    .line 1074
    .local v0, "tmp":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1075
    .local v1, "tmp2":D
    move-wide v3, p0

    .line 1077
    .local v3, "d":D
    :goto_0
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    .line 1079
    div-double/2addr v3, v5

    .line 1080
    add-int/lit8 v0, v0, 0x1

    .line 1081
    mul-double v1, v1, v5

    goto :goto_0

    .line 1083
    :cond_1
    div-double v5, p0, v1

    .line 1084
    .local v5, "rem":D
    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide v5

    .line 1085
    int-to-double v7, v0

    add-double/2addr v7, v5

    return-wide v7
.end method

.method public static log(J)D
    .locals 7
    .param p0, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1097
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floorLog(Ljava/math/BigInteger;)I

    move-result v0

    .line 1098
    .local v0, "tmp":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v1, v1

    .line 1099
    .local v1, "tmp2":J
    long-to-double v3, p0

    long-to-double v5, v1

    div-double/2addr v3, v5

    .line 1100
    .local v3, "rem":D
    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->logBKM(D)D

    move-result-wide v3

    .line 1101
    int-to-double v5, v0

    add-double/2addr v5, v3

    return-wide v5
.end method

.method private static logBKM(D)D
    .locals 13
    .param p0, "arg"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 1113
    const/16 v0, 0x64

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 1215
    .local v0, "ae":[D
    const/16 v1, 0x35

    .line 1216
    .local v1, "n":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1217
    .local v2, "x":D
    const-wide/16 v4, 0x0

    .line 1219
    .local v4, "y":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1222
    .local v6, "s":D
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    if-ge v8, v1, :cond_1

    .line 1224
    mul-double v9, v2, v6

    add-double/2addr v9, v2

    .line 1225
    .local v9, "z":D
    cmpg-double v11, v9, p0

    if-gtz v11, :cond_0

    .line 1227
    move-wide v2, v9

    .line 1228
    aget-wide v11, v0, v8

    add-double/2addr v4, v11

    .line 1230
    :cond_0
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v11

    .line 1222
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1232
    .end local v9    # "z":D
    :cond_1
    return-wide v4

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe2b803473f7ad1L    # 0.5849625007211562
        0x3fd49a784bcd1b8bL    # 0.32192809488736235
        0x3fc5c01a39fbd688L    # 0.16992500144231237
        0x3fb663f6fac91316L    # 0.0874628412503394
        0x3fa6bad3758efd87L    # 0.044394119358453436
        0x3f96e79685c2d22aL    # 0.02236781302845451
        0x3f86fe50b6ef0851L    # 0.01122725542325412
        0x3f7709c46d7aac77L    # 0.005624549193878107
        0x3f670f83ff0a7565L    # 0.0028150156070540383
        0x3f5712653743f454L    # 0.0014081943928083889
        0x3f4713d62f7957c3L    # 7.042690112466433E-4
        0x3f37148ec2a1bfc9L    # 3.5217748030102726E-4
        0x3f2714eb11fa5363L    # 1.7609948644250602E-4
        0x3f1715193b17d35dL    # 8.80524301221769E-5
        0x3f0715305002e4aeL    # 4.4026886827316716E-5
        0x3ef7153bda8f8225L    # 2.2013611360340496E-5
        0x3ee715419fdb9623L    # 1.1006847667481442E-5
        0x3ed7154482831175L    # 5.503434330648604E-6
        0x3ec71545f3d72b72L    # 2.751719789561283E-6
        0x3eb71546ac814f86L    # 1.375860550841138E-6
        0x3ea7154708d66756L    # 6.879304394358497E-7
        0x3e9715473700f4afL    # 3.4396526072176454E-7
        0x3e8715474e163bb8L    # 1.7198264061184464E-7
        0x3e77154759a0df53L    # 8.599132286866321E-8
        0x3e6715475f663127L    # 4.299566207501687E-8
        0x3e5715476248da12L    # 2.1497831197679756E-8
        0x3e47154763ba2e88L    # 1.0748915638882709E-8
        0x3e3715476472d8c3L    # 5.374457829452062E-9
        0x3e27154764cf2de1L    # 2.687228917228708E-9
        0x3e17154764fd586fL    # 1.3436144592400231E-9
        0x3e07154765146db7L    # 6.718072297764289E-10
        0x3df71547651ff85aL
        0x3de715476525bdacL    # 1.6795180747343547E-10
        0x3dd715476528a055L    # 8.397590373916176E-11
        0x3dc71547652a11aaL    # 4.1987951870191886E-11
        0x3db71547652aca54L
        0x3da71547652b26a9L    # 1.0496987967662534E-11
        0x3d971547652b54d4L    # 5.2484939838408146E-12
        0x3d871547652b6be9L    # 2.624246991922794E-12
        0x3d771547652b7773L    # 1.3121234959619935E-12
        0x3d671547652b7d39L    # 6.56061747981146E-13
        0x3d571547652b801bL    # 3.2803087399061026E-13
        0x3d471547652b818dL    # 1.6401543699531447E-13
        0x3d371547652b8245L    # 8.200771849765956E-14
        0x3d271547652b82a2L    # 4.1003859248830365E-14
        0x3d171547652b82d0L    # 2.0501929624415328E-14
        0x3d071547652b82e7L    # 1.02509648122077E-14
        0x3cf71547652b82f3L    # 5.1254824061038595E-15
        0x3ce71547652b82f8L
        0x3cd71547652b82fbL    # 1.2813706015259665E-15
        0x3cc71547652b82fdL    # 6.406853007629834E-16
        0x3cb71547652b82fdL    # 3.203426503814917E-16
        0x3ca71547652b82feL    # 1.6017132519074588E-16
        0x3c971547652b82feL    # 8.008566259537294E-17
        0x3c871547652b82feL    # 4.004283129768647E-17
        0x3c771547652b82feL    # 2.0021415648843235E-17
        0x3c671547652b82feL    # 1.0010707824421618E-17
        0x3c571547652b82feL    # 5.005353912210809E-18
        0x3c471547652b82feL    # 2.5026769561054044E-18
        0x3c371547652b82feL
        0x3c271547652b82feL    # 6.256692390263511E-19
        0x3c171547652b82feL    # 3.1283461951317555E-19
        0x3c071547652b82feL    # 1.5641730975658778E-19
        0x3bf71547652b82feL    # 7.820865487829389E-20
        0x3be71547652b82feL
        0x3bd71547652b82feL    # 1.9552163719573472E-20
        0x3bc71547652b82feL    # 9.776081859786736E-21
        0x3bb71547652b82feL    # 4.888040929893368E-21
        0x3ba71547652b82feL    # 2.444020464946684E-21
        0x3b971547652b82feL    # 1.222010232473342E-21
        0x3b871547652b82feL    # 6.11005116236671E-22
        0x3b771547652b82feL    # 3.055025581183355E-22
        0x3b671547652b82feL    # 1.5275127905916775E-22
        0x3b571547652b82feL    # 7.637563952958387E-23
        0x3b471547652b82feL    # 3.818781976479194E-23
        0x3b371547652b82feL    # 1.909390988239597E-23
        0x3b271547652b82feL    # 9.546954941197984E-24
        0x3b171547652b82feL    # 4.773477470598992E-24
        0x3b071547652b82feL    # 2.386738735299496E-24
        0x3af71547652b82feL    # 1.193369367649748E-24
        0x3ae71547652b82feL    # 5.96684683824874E-25
        0x3ad71547652b82feL    # 2.98342341912437E-25
        0x3ac71547652b82feL    # 1.491711709562185E-25
        0x3ab71547652b82feL    # 7.458558547810925E-26
        0x3aa71547652b82feL
        0x3a971547652b82feL    # 1.8646396369527313E-26
        0x3a871547652b82feL    # 9.323198184763657E-27
        0x3a771547652b82feL    # 4.661599092381828E-27
        0x3a671547652b82feL    # 2.330799546190914E-27
        0x3a571547652b82feL    # 1.165399773095457E-27
        0x3a471547652b82feL    # 5.826998865477285E-28
        0x3a371547652b82feL    # 2.9134994327386427E-28
        0x3a271547652b82feL    # 1.4567497163693213E-28
        0x3a171547652b82feL    # 7.283748581846607E-29
        0x3a071547652b82feL
        0x39f71547652b82feL    # 1.8209371454616517E-29
        0x39e71547652b82feL    # 9.104685727308258E-30
        0x39d71547652b82feL    # 4.552342863654129E-30
        0x39c71547652b82feL    # 2.2761714318270646E-30
    .end array-data
.end method

.method public static maxPower(I)I
    .locals 3
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "h":I
    if-eqz p0, :cond_0

    .line 352
    const/4 v1, 0x1

    .line 353
    .local v1, "p":I
    :goto_0
    and-int v2, p0, v1

    if-nez v2, :cond_0

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 356
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "p":I
    :cond_0
    return v0
.end method

.method public static mod(JJ)J
    .locals 5
    .param p0, "a"    # J
    .param p2, "m"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "m"
        }
    .end annotation

    .line 565
    rem-long v0, p0, p2

    .line 566
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 568
    add-long/2addr v0, p2

    .line 570
    :cond_0
    return-wide v0
.end method

.method public static modInverse(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "mod"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "mod"
        }
    .end annotation

    .line 582
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 582
    return v0
.end method

.method public static modInverse(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "mod"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "mod"
        }
    .end annotation

    .line 595
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 595
    return-wide v0
.end method

.method public static modPow(III)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "e"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "e",
            "n"
        }
    .end annotation

    .line 486
    if-lez p2, :cond_3

    int-to-long v0, p2

    int-to-long v2, p2

    mul-long v0, v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    const/4 v0, 0x1

    .line 491
    .local v0, "result":I
    rem-int v1, p0, p2

    add-int/2addr v1, p2

    rem-int/2addr v1, p2

    .line 492
    .end local p0    # "a":I
    .local v1, "a":I
    :goto_0
    if-lez p1, :cond_2

    .line 494
    and-int/lit8 p0, p1, 0x1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 496
    mul-int p0, v0, v1

    rem-int/2addr p0, p2

    move v0, p0

    .line 498
    :cond_1
    mul-int p0, v1, v1

    rem-int v1, p0, p2

    .line 499
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 501
    :cond_2
    return v0

    .line 488
    .end local v0    # "result":I
    .end local v1    # "a":I
    .restart local p0    # "a":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static nextPrime(J)Ljava/math/BigInteger;
    .locals 15
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, "found":Z
    const-wide/16 v1, 0x0

    .line 864
    .local v1, "result":J
    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x1

    cmp-long v7, p0, v5

    if-gtz v7, :cond_0

    .line 866
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 868
    :cond_0
    cmp-long v7, p0, v3

    if-nez v7, :cond_1

    .line 870
    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 873
    :cond_1
    add-long v7, p0, v5

    and-long/2addr v5, p0

    add-long/2addr v7, v5

    .local v7, "i":J
    :goto_0
    const/4 v5, 0x1

    shl-long v9, p0, v5

    cmp-long v6, v7, v9

    if-gtz v6, :cond_5

    if-nez v0, :cond_5

    .line 875
    const-wide/16 v9, 0x3

    .local v9, "j":J
    :goto_1
    shr-long v11, v7, v5

    cmp-long v6, v9, v11

    if-gtz v6, :cond_3

    if-nez v0, :cond_3

    .line 877
    rem-long v11, v7, v9

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-nez v6, :cond_2

    .line 879
    const/4 v0, 0x1

    .line 875
    :cond_2
    add-long/2addr v9, v3

    goto :goto_1

    .line 882
    .end local v9    # "j":J
    :cond_3
    if-eqz v0, :cond_4

    .line 884
    const/4 v0, 0x0

    goto :goto_2

    .line 888
    :cond_4
    move-wide v1, v7

    .line 889
    const/4 v0, 0x1

    .line 873
    :goto_2
    add-long/2addr v7, v3

    goto :goto_0

    .line 892
    :cond_5
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "n"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 849
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static nextProbablePrime(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 8
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "certainty"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "certainty"
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 799
    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 802
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 804
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 810
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_3

    .line 812
    nop

    .line 813
    const-wide v1, 0x8a5b6470af95L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 812
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 813
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    .line 814
    .local v1, "r":J
    const-wide/16 v3, 0x3

    rem-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x5

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x7

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0xb

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0xd

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x11

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x13

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x17

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x1d

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x1f

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x25

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide/16 v3, 0x29

    rem-long v3, v1, v3

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 819
    :cond_2
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 820
    goto/16 :goto_0

    .line 825
    .end local v1    # "r":J
    :cond_3
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 827
    return-object v0

    .line 831
    :cond_4
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 833
    return-object v0

    .line 836
    :cond_5
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_0

    .line 796
    .end local v0    # "result":Ljava/math/BigInteger;
    :cond_6
    :goto_1
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public static nextSmallerPrime(I)I
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 757
    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 759
    const/4 v0, 0x1

    return v0

    .line 762
    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 764
    return v0

    .line 767
    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2

    .line 769
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 773
    :cond_2
    add-int/lit8 p0, p0, -0x2

    .line 776
    :goto_0
    if-le p0, v1, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    add-int/lit8 p0, p0, -0x2

    goto :goto_0

    .line 780
    :cond_3
    return p0
.end method

.method public static octetsToInteger([B)Ljava/math/BigInteger;
    .locals 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1274
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->octetsToInteger([BII)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static octetsToInteger([BII)Ljava/math/BigInteger;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "length"
        }
    .end annotation

    .line 1265
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    .line 1267
    .local v0, "val":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 1268
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public static order(II)I
    .locals 5
    .param p0, "g"    # I
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "g",
            "p"
        }
    .end annotation

    .line 393
    rem-int v0, p0, p1

    .line 394
    .local v0, "b":I
    const/4 v1, 0x1

    .line 397
    .local v1, "j":I
    if-eqz v0, :cond_2

    .line 404
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 406
    mul-int v0, v0, p0

    .line 407
    rem-int/2addr v0, p1

    .line 408
    if-gez v0, :cond_0

    .line 410
    add-int/2addr v0, p1

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_1
    return v1

    .line 399
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an element of Z/("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z)^*; it is not meaningful to compute its order."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static passesSmallPrimeTest(Ljava/math/BigInteger;)Z
    .locals 4
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    .line 715
    const/16 v0, 0xef

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 737
    .local v0, "smallPrime":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 739
    aget v2, v0, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    const/4 v2, 0x0

    return v2

    .line 737
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x3f5
        0x3fb
        0x3fd
        0x407
        0x409
        0x40f
        0x419
        0x41b
        0x425
        0x427
        0x42d
        0x43f
        0x443
        0x445
        0x449
        0x44f
        0x455
        0x45d
        0x463
        0x469
        0x47f
        0x481
        0x48b
        0x493
        0x49d
        0x4a3
        0x4a9
        0x4b1
        0x4bd
        0x4c1
        0x4c7
        0x4cd
        0x4cf
        0x4d5
        0x4e1
        0x4eb
        0x4fd
        0x4ff
        0x503
        0x509
        0x50b
        0x511
        0x515
        0x517
        0x51b
        0x527
        0x529
        0x52f
        0x551
        0x557
        0x55d
        0x565
        0x577
        0x581
        0x58f
        0x593    # 2.0E-42f
        0x595
        0x599
        0x59f
        0x5a7
        0x5ab
        0x5ad
        0x5b3
        0x5bf
        0x5c9
        0x5cb
        0x5cf
        0x5d1
        0x5d5
        0x5db
    .end array-data
.end method

.method public static pow(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "e"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "e"
        }
    .end annotation

    .line 441
    const/4 v0, 0x1

    .line 442
    .local v0, "result":I
    :goto_0
    if-lez p1, :cond_1

    .line 444
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 446
    mul-int v0, v0, p0

    .line 448
    :cond_0
    mul-int p0, p0, p0

    .line 449
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 451
    :cond_1
    return v0
.end method

.method public static pow(JI)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "e"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "e"
        }
    .end annotation

    .line 463
    const-wide/16 v0, 0x1

    .line 464
    .local v0, "result":J
    :goto_0
    if-lez p2, :cond_1

    .line 466
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 468
    mul-long v0, v0, p0

    .line 470
    :cond_0
    mul-long p0, p0, p0

    .line 471
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 473
    :cond_1
    return-wide v0
.end method

.method public static randomize(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "upperBound"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upperBound"
        }
    .end annotation

    .line 938
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 940
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 942
    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static randomize(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "upperBound"    # Ljava/math/BigInteger;
    .param p1, "prng"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "upperBound",
            "prng"
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 949
    .local v0, "blen":I
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 951
    .local v1, "randomNum":Ljava/math/BigInteger;
    if-nez p1, :cond_1

    .line 953
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    :goto_0
    move-object p1, v2

    .line 956
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_3

    .line 958
    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 959
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_2

    .line 961
    return-object v1

    .line 956
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 964
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public static reduceInto(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "begin"    # Ljava/math/BigInteger;
    .param p2, "end"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "begin",
            "end"
        }
    .end annotation

    .line 429
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static squareRoot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "a"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 978
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 984
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 985
    .local v0, "bl":I
    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 986
    .local v1, "result":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 989
    .local v2, "remainder":Ljava/math/BigInteger;
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 991
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 992
    add-int/lit8 v0, v0, -0x1

    .line 995
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 997
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 998
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    .line 999
    :cond_1
    const/4 v3, 0x0

    .line 1000
    :goto_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    .line 998
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1001
    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1002
    .local v3, "b":Ljava/math/BigInteger;
    sget-object v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1003
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1005
    sget-object v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1006
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 1010
    .end local v3    # "b":Ljava/math/BigInteger;
    :cond_2
    return-object v1

    .line 980
    .end local v0    # "bl":I
    .end local v1    # "result":Ljava/math/BigInteger;
    .end local v2    # "remainder":Ljava/math/BigInteger;
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot extract root of negative number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public abstract Lorg/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/Primes$STOutput;,
        Lorg/bouncycastle/math/Primes$MROutput;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "name"
        }
    .end annotation

    .line 356
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 360
    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-null and >= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lorg/bouncycastle/math/Primes$MROutput;
    .locals 13
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "candidate",
            "random",
            "iterations"
        }
    .end annotation

    .line 152
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 154
    if-eqz p1, :cond_c

    .line 158
    const/4 v0, 0x1

    if-lt p2, v0, :cond_b

    .line 163
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    invoke-static {}, Lorg/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    sget-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0

    .line 172
    :cond_1
    move-object v0, p0

    .line 173
    .local v0, "w":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 174
    .local v1, "wSubOne":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 176
    .local v2, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    .line 177
    .local v3, "a":I
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 179
    .local v4, "m":Ljava/math/BigInteger;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_a

    .line 181
    sget-object v6, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v6, v2, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 182
    .local v6, "b":Ljava/math/BigInteger;
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 184
    .local v7, "g":Ljava/math/BigInteger;
    sget-object v8, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_2

    .line 186
    invoke-static {v7}, Lorg/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v8

    return-object v8

    .line 189
    :cond_2
    invoke-virtual {v6, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 191
    .local v8, "z":Ljava/math/BigInteger;
    sget-object v9, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    goto :goto_3

    .line 196
    :cond_3
    const/4 v9, 0x0

    .line 198
    .local v9, "primeToBase":Z
    move-object v10, v8

    .line 199
    .local v10, "x":Ljava/math/BigInteger;
    const/4 v11, 0x1

    .local v11, "j":I
    :goto_1
    if-ge v11, v3, :cond_6

    .line 201
    sget-object v12, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v12, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 203
    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 205
    const/4 v9, 0x1

    .line 206
    goto :goto_2

    .line 209
    :cond_4
    sget-object v12, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 211
    goto :goto_2

    .line 214
    :cond_5
    move-object v10, v8

    .line 199
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 217
    .end local v11    # "j":I
    :cond_6
    :goto_2
    if-nez v9, :cond_9

    .line 219
    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 221
    move-object v10, v8

    .line 222
    sget-object v11, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v11, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 224
    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 226
    move-object v10, v8

    .line 230
    :cond_7
    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 232
    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-lez v11, :cond_8

    .line 234
    invoke-static {v7}, Lorg/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v11

    return-object v11

    .line 237
    :cond_8
    invoke-static {}, Lorg/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeNotPrimePower()Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v11

    return-object v11

    .line 179
    .end local v6    # "b":Ljava/math/BigInteger;
    .end local v7    # "g":Ljava/math/BigInteger;
    .end local v8    # "z":Ljava/math/BigInteger;
    .end local v9    # "primeToBase":Z
    .end local v10    # "x":Ljava/math/BigInteger;
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 241
    .end local v5    # "i":I
    :cond_a
    invoke-static {}, Lorg/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v5

    return-object v5

    .line 160
    .end local v0    # "w":Ljava/math/BigInteger;
    .end local v1    # "wSubOne":Ljava/math/BigInteger;
    .end local v2    # "wSubTwo":Ljava/math/BigInteger;
    .end local v3    # "a":I
    .end local v4    # "m":Ljava/math/BigInteger;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extract32([B)I
    .locals 5
    .param p0, "bs"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bs"
        }
    .end annotation

    .line 585
    const/4 v0, 0x0

    .line 587
    .local v0, "result":I
    const/4 v1, 0x4

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 588
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 590
    array-length v3, p0

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 591
    .local v3, "b":I
    mul-int/lit8 v4, v2, 0x8

    shl-int v4, v3, v4

    or-int/2addr v0, v4

    .line 588
    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public static generateSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;
    .locals 2
    .param p0, "hash"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "inputSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hash",
            "length",
            "inputSeed"
        }
    .end annotation

    .line 118
    if-eqz p0, :cond_2

    .line 122
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 126
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/Primes;->implSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'length\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    .line 255
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lorg/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method private static hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "input",
            "output",
            "outPos"
        }
    .end annotation

    .line 599
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 600
    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 601
    return-void
.end method

.method private static hashGen(Lorg/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .locals 5
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "seed"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "seed",
            "count"
        }
    .end annotation

    .line 605
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 606
    .local v0, "dLen":I
    mul-int v1, p2, v0

    .line 607
    .local v1, "pos":I
    new-array v2, v1, [B

    .line 608
    .local v2, "buf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_0

    .line 610
    sub-int/2addr v1, v0

    .line 611
    invoke-static {p0, p1, v2, v1}, Lorg/bouncycastle/math/Primes;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 612
    invoke-static {p1, v4}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 367
    const v0, 0xd4c2086

    .line 368
    .local v0, "m":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 369
    .local v1, "r":I
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0xb

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0xd

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x11

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x13

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x17

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 375
    :cond_0
    const v0, 0x37ed0ed

    .line 376
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 377
    rem-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x25

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x29

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x2b

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 382
    :cond_1
    const v0, 0x23cd611f

    .line 383
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 384
    rem-int/lit8 v2, v1, 0x2f

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x35

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x3b

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x3d

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x43

    if-nez v2, :cond_2

    goto/16 :goto_7

    .line 389
    :cond_2
    const v0, 0x20691a3

    .line 390
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 391
    rem-int/lit8 v2, v1, 0x47

    if-eqz v2, :cond_10

    rem-int/lit8 v2, v1, 0x49

    if-eqz v2, :cond_10

    rem-int/lit8 v2, v1, 0x4f

    if-eqz v2, :cond_10

    rem-int/lit8 v2, v1, 0x53

    if-nez v2, :cond_3

    goto/16 :goto_6

    .line 396
    :cond_3
    const v0, 0x55a60cb

    .line 397
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 398
    rem-int/lit8 v2, v1, 0x59

    if-eqz v2, :cond_f

    rem-int/lit8 v2, v1, 0x61

    if-eqz v2, :cond_f

    rem-int/lit8 v2, v1, 0x65

    if-eqz v2, :cond_f

    rem-int/lit8 v2, v1, 0x67

    if-nez v2, :cond_4

    goto/16 :goto_5

    .line 403
    :cond_4
    const v0, 0x9f9f361

    .line 404
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 405
    rem-int/lit8 v2, v1, 0x6b

    if-eqz v2, :cond_e

    rem-int/lit8 v2, v1, 0x6d

    if-eqz v2, :cond_e

    rem-int/lit8 v2, v1, 0x71

    if-eqz v2, :cond_e

    rem-int/lit8 v2, v1, 0x7f

    if-nez v2, :cond_5

    goto/16 :goto_4

    .line 410
    :cond_5
    const v0, 0x1627b25d

    .line 411
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 412
    rem-int/lit16 v2, v1, 0x83

    if-eqz v2, :cond_d

    rem-int/lit16 v2, v1, 0x89

    if-eqz v2, :cond_d

    rem-int/lit16 v2, v1, 0x8b

    if-eqz v2, :cond_d

    rem-int/lit16 v2, v1, 0x95

    if-nez v2, :cond_6

    goto :goto_3

    .line 417
    :cond_6
    const v0, 0x2676ed77

    .line 418
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 419
    rem-int/lit16 v2, v1, 0x97

    if-eqz v2, :cond_c

    rem-int/lit16 v2, v1, 0x9d

    if-eqz v2, :cond_c

    rem-int/lit16 v2, v1, 0xa3

    if-eqz v2, :cond_c

    rem-int/lit16 v2, v1, 0xa7

    if-nez v2, :cond_7

    goto :goto_2

    .line 424
    :cond_7
    const v0, 0x3fcf739d

    .line 425
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 426
    rem-int/lit16 v2, v1, 0xad

    if-eqz v2, :cond_b

    rem-int/lit16 v2, v1, 0xb3

    if-eqz v2, :cond_b

    rem-int/lit16 v2, v1, 0xb5

    if-eqz v2, :cond_b

    rem-int/lit16 v2, v1, 0xbf

    if-nez v2, :cond_8

    goto :goto_1

    .line 431
    :cond_8
    const v0, 0x5f281a99

    .line 432
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 433
    rem-int/lit16 v2, v1, 0xc1

    if-eqz v2, :cond_a

    rem-int/lit16 v2, v1, 0xc5

    if-eqz v2, :cond_a

    rem-int/lit16 v2, v1, 0xc7

    if-eqz v2, :cond_a

    rem-int/lit16 v2, v1, 0xd3

    if-nez v2, :cond_9

    goto :goto_0

    .line 442
    :cond_9
    const/4 v2, 0x0

    return v2

    .line 435
    :cond_a
    :goto_0
    return v3

    .line 428
    :cond_b
    :goto_1
    return v3

    .line 421
    :cond_c
    :goto_2
    return v3

    .line 414
    :cond_d
    :goto_3
    return v3

    .line 407
    :cond_e
    :goto_4
    return v3

    .line 400
    :cond_f
    :goto_5
    return v3

    .line 393
    :cond_10
    :goto_6
    return v3

    .line 386
    :cond_11
    :goto_7
    return v3

    .line 379
    :cond_12
    :goto_8
    return v3

    .line 372
    :cond_13
    :goto_9
    return v3
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 4
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "wSubOne"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;
    .param p3, "a"    # I
    .param p4, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "wSubOne",
            "m",
            "a",
            "b"
        }
    .end annotation

    .line 447
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 449
    .local v0, "z":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 454
    :cond_0
    const/4 v1, 0x0

    .line 456
    .local v1, "result":Z
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 458
    sget-object v3, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 460
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    const/4 v1, 0x1

    .line 463
    goto :goto_1

    .line 466
    :cond_1
    sget-object v3, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 468
    const/4 v3, 0x0

    return v3

    .line 456
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "j":I
    :cond_3
    :goto_1
    return v1

    .line 451
    .end local v1    # "result":Z
    :cond_4
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method private static implSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;
    .locals 18
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "primeSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "length",
            "primeSeed"
        }
    .end annotation

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 479
    .local v3, "dLen":I
    const/16 v4, 0x21

    const-string v5, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v4, :cond_2

    .line 481
    const/4 v4, 0x0

    .line 483
    .local v4, "primeGenCounter":I
    new-array v8, v3, [B

    .line 484
    .local v8, "c0":[B
    new-array v9, v3, [B

    .line 488
    .local v9, "c1":[B
    :goto_0
    const/4 v10, 0x0

    invoke-static {v0, v2, v8, v10}, Lorg/bouncycastle/math/Primes;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 489
    invoke-static {v2, v7}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    .line 491
    invoke-static {v0, v2, v9, v10}, Lorg/bouncycastle/math/Primes;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    .line 492
    invoke-static {v2, v7}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    .line 494
    invoke-static {v8}, Lorg/bouncycastle/math/Primes;->extract32([B)I

    move-result v10

    invoke-static {v9}, Lorg/bouncycastle/math/Primes;->extract32([B)I

    move-result v11

    xor-int/2addr v10, v11

    .line 495
    .local v10, "c":I
    rsub-int/lit8 v11, v1, 0x20

    const/4 v12, -0x1

    ushr-int v11, v12, v11

    and-int/2addr v10, v11

    .line 496
    add-int/lit8 v11, v1, -0x1

    shl-int v11, v7, v11

    or-int/2addr v11, v7

    or-int/2addr v10, v11

    .line 498
    add-int/2addr v4, v7

    .line 500
    int-to-long v11, v10

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    .line 501
    .local v11, "c64":J
    invoke-static {v11, v12}, Lorg/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 503
    new-instance v5, Lorg/bouncycastle/math/Primes$STOutput;

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v7, v2, v4, v6}, Lorg/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/bouncycastle/math/Primes-IA;)V

    return-object v5

    .line 506
    :cond_0
    mul-int/lit8 v13, v1, 0x4

    if-gt v4, v13, :cond_1

    .line 510
    .end local v10    # "c":I
    .end local v11    # "c64":J
    goto :goto_0

    .line 508
    .restart local v10    # "c":I
    .restart local v11    # "c64":J
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 513
    .end local v4    # "primeGenCounter":I
    .end local v8    # "c0":[B
    .end local v9    # "c1":[B
    .end local v10    # "c":I
    .end local v11    # "c64":J
    :cond_2
    add-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/math/Primes;->implSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;

    move-result-object v4

    .line 515
    .local v4, "rec":Lorg/bouncycastle/math/Primes$STOutput;
    invoke-virtual {v4}, Lorg/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v8

    .line 516
    .local v8, "c0":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lorg/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v2

    .line 517
    .end local p2    # "primeSeed":[B
    .local v2, "primeSeed":[B
    invoke-virtual {v4}, Lorg/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v9

    .line 519
    .local v9, "primeGenCounter":I
    mul-int/lit8 v10, v3, 0x8

    .line 520
    .local v10, "outlen":I
    add-int/lit8 v11, v1, -0x1

    div-int/2addr v11, v10

    .line 522
    .local v11, "iterations":I
    move v12, v9

    .line 524
    .local v12, "oldCounter":I
    add-int/lit8 v13, v11, 0x1

    invoke-static {v0, v2, v13}, Lorg/bouncycastle/math/Primes;->hashGen(Lorg/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v13

    .line 525
    .local v13, "x":Ljava/math/BigInteger;
    sget-object v14, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 527
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    .line 528
    .local v14, "c0x2":Ljava/math/BigInteger;
    sget-object v15, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v6, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 529
    .local v6, "tx2":Ljava/math/BigInteger;
    const/4 v15, 0x0

    .line 531
    .local v15, "dt":I
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move/from16 v17, v3

    .end local v3    # "dLen":I
    .local v17, "dLen":I
    sget-object v3, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 539
    .local v3, "c":Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-le v7, v1, :cond_3

    .line 541
    sget-object v7, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v7, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v7, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 542
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v16, 0x1

    sget-object v7, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    .line 539
    :cond_3
    const/16 v16, 0x1

    .line 545
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 553
    invoke-static {v3}, Lorg/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 555
    add-int/lit8 v1, v11, 0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/Primes;->hashGen(Lorg/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v1

    .line 556
    .local v1, "a":Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 558
    .end local v1    # "a":Ljava/math/BigInteger;
    .local v0, "a":Ljava/math/BigInteger;
    move/from16 p2, v10

    move v1, v11

    .end local v10    # "outlen":I
    .end local v11    # "iterations":I
    .local v1, "iterations":I
    .local p2, "outlen":I
    int-to-long v10, v15

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 559
    const/4 v15, 0x0

    .line 561
    invoke-virtual {v0, v6, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 563
    .local v7, "z":Ljava/math/BigInteger;
    sget-object v10, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7, v8, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 565
    new-instance v5, Lorg/bouncycastle/math/Primes$STOutput;

    const/4 v10, 0x0

    invoke-direct {v5, v3, v2, v9, v10}, Lorg/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/bouncycastle/math/Primes-IA;)V

    return-object v5

    .line 563
    :cond_4
    const/4 v10, 0x0

    .line 567
    .end local v0    # "a":Ljava/math/BigInteger;
    .end local v7    # "z":Ljava/math/BigInteger;
    goto :goto_3

    .line 570
    .end local v1    # "iterations":I
    .end local p2    # "outlen":I
    .restart local v10    # "outlen":I
    .restart local v11    # "iterations":I
    :cond_5
    move/from16 p2, v10

    move v1, v11

    const/4 v10, 0x0

    .end local v10    # "outlen":I
    .end local v11    # "iterations":I
    .restart local v1    # "iterations":I
    .restart local p2    # "outlen":I
    add-int/lit8 v11, v1, 0x1

    invoke-static {v2, v11}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    .line 573
    :goto_3
    mul-int/lit8 v0, p1, 0x4

    add-int/2addr v0, v12

    if-ge v9, v0, :cond_6

    .line 578
    add-int/lit8 v15, v15, 0x2

    .line 579
    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v10, p2

    move v11, v1

    move/from16 v1, p1

    goto/16 :goto_1

    .line 575
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static inc([BI)V
    .locals 2
    .param p0, "seed"    # [B
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "c"
        }
    .end annotation

    .line 619
    array-length v0, p0

    .line 620
    .local v0, "pos":I
    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 622
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    .line 623
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 624
    ushr-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 10
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "candidate",
            "random",
            "iterations"
        }
    .end annotation

    .line 278
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 280
    if-eqz p1, :cond_5

    .line 284
    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    .line 289
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    return v1

    .line 298
    :cond_1
    move-object v2, p0

    .line 299
    .local v2, "w":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 300
    .local v3, "wSubOne":Ljava/math/BigInteger;
    sget-object v4, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 302
    .local v4, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    .line 303
    .local v5, "a":I
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 305
    .local v6, "m":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p2, :cond_3

    .line 307
    sget-object v8, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v8, v4, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    .line 309
    .local v8, "b":Ljava/math/BigInteger;
    invoke-static {v2, v3, v6, v5, v8}, Lorg/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 311
    return v1

    .line 305
    .end local v8    # "b":Ljava/math/BigInteger;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 315
    .end local v7    # "i":I
    :cond_3
    return v0

    .line 286
    .end local v2    # "w":Ljava/math/BigInteger;
    .end local v3    # "wSubOne":Ljava/math/BigInteger;
    .end local v4    # "wSubTwo":Ljava/math/BigInteger;
    .end local v5    # "a":I
    .end local v6    # "m":Ljava/math/BigInteger;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "base"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "candidate",
            "base"
        }
    .end annotation

    .line 332
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 333
    const-string v0, "base"

    invoke-static {p1, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 340
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 342
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_0
    move-object v0, p0

    .line 346
    .local v0, "w":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 348
    .local v1, "wSubOne":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    .line 349
    .local v2, "a":I
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 351
    .local v3, "m":Ljava/math/BigInteger;
    invoke-static {v0, v1, v3, v2, p1}, Lorg/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v4

    return v4

    .line 337
    .end local v0    # "w":Ljava/math/BigInteger;
    .end local v1    # "wSubOne":Ljava/math/BigInteger;
    .end local v2    # "a":I
    .end local v3    # "m":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isPrime32(J)Z
    .locals 15
    .param p0, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 630
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    .line 639
    const-wide/16 v0, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x5

    const/4 v7, 0x1

    cmp-long v8, p0, v5

    if-gtz v8, :cond_2

    .line 641
    const-wide/16 v2, 0x2

    cmp-long v8, p0, v2

    if-eqz v8, :cond_0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    cmp-long v0, p0, v5

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4

    .line 644
    :cond_2
    const-wide/16 v8, 0x1

    and-long/2addr v8, p0

    cmp-long v10, v8, v2

    if-eqz v10, :cond_8

    rem-long v0, p0, v0

    cmp-long v8, v0, v2

    if-eqz v8, :cond_8

    rem-long v0, p0, v5

    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    goto :goto_1

    .line 649
    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 650
    .local v0, "ds":[J
    const-wide/16 v5, 0x0

    .line 651
    .local v5, "base":J
    const/4 v1, 0x1

    .line 656
    .local v1, "pos":I
    :goto_0
    array-length v8, v0

    const-wide/16 v9, 0x1e

    if-ge v1, v8, :cond_6

    .line 658
    aget-wide v11, v0, v1

    add-long/2addr v11, v5

    .line 659
    .local v11, "d":J
    rem-long v13, p0, v11

    cmp-long v8, v13, v2

    if-nez v8, :cond_5

    .line 661
    cmp-long v2, p0, v9

    if-gez v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4

    .line 663
    :cond_5
    nop

    .end local v11    # "d":J
    add-int/lit8 v1, v1, 0x1

    .line 664
    goto :goto_0

    .line 666
    :cond_6
    add-long/2addr v5, v9

    .line 668
    mul-long v8, v5, v5

    cmp-long v10, v8, p0

    if-ltz v10, :cond_7

    .line 670
    return v7

    .line 651
    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    .line 646
    .end local v0    # "ds":[J
    .end local v1    # "pos":I
    .end local v5    # "base":J
    :cond_8
    :goto_1
    return v4

    .line 632
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method

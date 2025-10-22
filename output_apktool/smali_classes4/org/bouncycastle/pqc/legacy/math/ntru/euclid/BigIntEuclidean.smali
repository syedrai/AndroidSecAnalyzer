.class public Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;
.super Ljava/lang/Object;
.source "BigIntEuclidean.java"


# instance fields
.field public gcd:Ljava/math/BigInteger;

.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;
    .locals 8
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

    .line 26
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 27
    .local v0, "x":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 28
    .local v1, "lastx":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 29
    .local v2, "y":Ljava/math/BigInteger;
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 30
    .local v3, "lasty":Ljava/math/BigInteger;
    :goto_0
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 33
    .local v4, "quotientAndRemainder":[Ljava/math/BigInteger;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 35
    .local v5, "quotient":Ljava/math/BigInteger;
    move-object v6, p0

    .line 36
    .local v6, "temp":Ljava/math/BigInteger;
    move-object p0, p1

    .line 37
    const/4 v7, 0x1

    aget-object p1, v4, v7

    .line 39
    move-object v6, v0

    .line 40
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 41
    move-object v1, v6

    .line 43
    move-object v6, v2

    .line 44
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 45
    move-object v3, v6

    .line 46
    .end local v4    # "quotientAndRemainder":[Ljava/math/BigInteger;
    .end local v5    # "quotient":Ljava/math/BigInteger;
    .end local v6    # "temp":Ljava/math/BigInteger;
    goto :goto_0

    .line 48
    :cond_0
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;-><init>()V

    .line 49
    .local v4, "result":Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;
    iput-object v1, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    .line 50
    iput-object v3, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    .line 51
    iput-object p0, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->gcd:Ljava/math/BigInteger;

    .line 52
    return-object v4
.end method

.class public Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;
.super Ljava/lang/Object;
.source "IntEuclidean.java"


# instance fields
.field public gcd:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static calculate(II)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;
    .locals 7
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

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "x":I
    const/4 v1, 0x1

    .line 26
    .local v1, "lastx":I
    const/4 v2, 0x1

    .line 27
    .local v2, "y":I
    const/4 v3, 0x0

    .line 28
    .local v3, "lasty":I
    :goto_0
    if-eqz p1, :cond_0

    .line 30
    div-int v4, p0, p1

    .line 32
    .local v4, "quotient":I
    move v5, p0

    .line 33
    .local v5, "temp":I
    move p0, p1

    .line 34
    rem-int p1, v5, p1

    .line 36
    move v5, v0

    .line 37
    mul-int v6, v4, v0

    sub-int v0, v1, v6

    .line 38
    move v1, v5

    .line 40
    move v5, v2

    .line 41
    mul-int v6, v4, v2

    sub-int v2, v3, v6

    .line 42
    move v3, v5

    .line 43
    .end local v4    # "quotient":I
    .end local v5    # "temp":I
    goto :goto_0

    .line 45
    :cond_0
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;-><init>()V

    .line 46
    .local v4, "result":Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;
    iput v1, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->x:I

    .line 47
    iput v3, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->y:I

    .line 48
    iput p0, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->gcd:I

    .line 49
    return-object v4
.end method

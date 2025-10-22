.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.source "GF2nPolynomialElement.java"


# static fields
.field private static final bitMask:[I


# instance fields
.field private polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V
    .locals 2
    .param p1, "other"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 103
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 104
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 105
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V
    .locals 2
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
    .param p2, "rand"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "rand"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 46
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 47
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->randomize(Ljava/util/Random;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .locals 2
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
    .param p2, "bs"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "bs"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 60
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;[B)V
    .locals 2
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
    .param p2, "os"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "os"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 76
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;[I)V
    .locals 2
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
    .param p2, "is"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "is"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 91
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 93
    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 3
    .param p0, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 157
    .local v0, "polynomial":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 2
    .param p0, "f"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 144
    .local v0, "polynomial":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method private getGF2Polynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 2

    .line 250
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method private halfTrace()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 826
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 831
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 833
    .local v0, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_0

    .line 835
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 836
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 837
    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    :cond_0
    return-object v0

    .line 828
    .end local v0    # "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private randomize(Ljava/util/Random;)V
    .locals 2
    .param p1, "rand"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rand"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    .line 178
    return-void
.end method

.method private reducePentanomialBitwise([I)V
    .locals 6
    .param p1, "pc"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pc"
        }
    .end annotation

    .line 946
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v1, 0x2

    aget v1, p1, v1

    sub-int/2addr v0, v1

    .line 947
    .local v0, "k":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-int/2addr v1, v3

    .line 948
    .local v1, "l":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v4, 0x0

    aget v4, p1, v4

    sub-int/2addr v3, v4

    .line 949
    .local v3, "m":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt v4, v2, :cond_1

    .line 951
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 954
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v5, v4, v0

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 955
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v5, v4, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 956
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v5, v4, v3

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 957
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v5, v4, v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 949
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 961
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 962
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 963
    return-void
.end method

.method private reduceThis()V
    .locals 4

    .line 851
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-le v0, v1, :cond_6

    .line 853
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    .line 859
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->getTc()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .local v0, "tc":I
    nop

    .line 867
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 869
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceTrinomial(II)V

    .line 875
    return-void

    .line 871
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceTrinomialBitwise(I)V

    .line 872
    return-void

    .line 861
    .end local v0    # "tc":I
    :catch_0
    move-exception v0

    .line 863
    .local v0, "NATExc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 877
    .end local v0    # "NATExc":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 884
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->getPc()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 891
    .local v0, "pc":[I
    nop

    .line 892
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v3, 0x2

    aget v3, v0, v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 894
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_3

    goto :goto_1

    .line 899
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reducePentanomial(I[I)V

    .line 900
    return-void

    .line 896
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reducePentanomialBitwise([I)V

    .line 897
    return-void

    .line 886
    .end local v0    # "pc":[I
    :catch_1
    move-exception v0

    .line 888
    .local v0, "NATExc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    .end local v0    # "NATExc":Ljava/lang/RuntimeException;
    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 905
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 906
    return-void

    .line 909
    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v1, :cond_7

    .line 911
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 913
    :cond_7
    return-void
.end method

.method private reduceTrinomialBitwise(I)V
    .locals 4
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tc"
        }
    .end annotation

    .line 922
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v0, p1

    .line 923
    .local v0, "k":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt v1, v2, :cond_1

    .line 925
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 929
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 930
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 923
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 934
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 935
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 936
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 284
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 285
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 286
    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 2
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 297
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 306
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method assignOne()V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignOne()V

    .line 166
    return-void
.end method

.method assignZero()V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->assignZero()V

    .line 133
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-nez v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    .line 219
    .local v1, "otherElem":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    if-eq v2, v3, :cond_1

    .line 221
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 222
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    return v0

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 215
    .end local v1    # "otherElem":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    .line 315
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 316
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->increaseThis()V

    .line 317
    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->increaseThis()V

    .line 326
    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->invertMAIA()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public invertEEA()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v1, v1, 0x20

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 398
    .local v0, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 399
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 400
    .local v1, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 401
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 402
    .local v2, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 405
    .local v3, "v":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 406
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 408
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 409
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 410
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    sub-int/2addr v4, v5

    .line 411
    .local v4, "j":I
    if-gez v4, :cond_0

    .line 413
    move-object v5, v2

    .line 414
    .local v5, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    move-object v2, v3

    .line 415
    move-object v3, v5

    .line 416
    move-object v5, v0

    .line 417
    move-object v0, v1

    .line 418
    move-object v1, v5

    .line 419
    neg-int v4, v4

    .line 420
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 422
    .end local v5    # "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_0
    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    .line 423
    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;I)V

    goto :goto_0

    .line 425
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 426
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v4

    .line 395
    .end local v0    # "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v1    # "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v2    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v3    # "v":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public invertMAIA()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_4

    .line 502
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 503
    .local v0, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 504
    .local v1, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 505
    .local v2, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 509
    .local v3, "v":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 511
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    .line 512
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    .line 518
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 519
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v4

    .line 527
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 528
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 529
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 531
    move-object v4, v2

    .line 532
    .local v4, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    move-object v2, v3

    .line 533
    move-object v3, v4

    .line 534
    move-object v4, v0

    .line 535
    move-object v0, v1

    .line 536
    move-object v1, v4

    .line 538
    .end local v4    # "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_3
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 539
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    goto :goto_0

    .line 500
    .end local v0    # "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v1    # "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v2    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v3    # "v":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public invertSquare()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 450
    .local v0, "b":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 451
    .local v1, "n":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 452
    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 454
    const/4 v2, 0x1

    .line 457
    .local v2, "k":I
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 460
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 462
    .local v4, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-gt v5, v2, :cond_0

    .line 465
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 462
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 468
    :cond_0
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 470
    shl-int/lit8 v2, v2, 0x1

    .line 472
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    aget v6, v6, v3

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 475
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 476
    invoke-virtual {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 478
    add-int/lit8 v2, v2, 0x1

    .line 457
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 483
    .end local v4    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .end local v5    # "j":I
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 484
    return-object v1

    .line 445
    .end local v0    # "b":I
    .end local v1    # "n":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .end local v2    # "k":I
    .end local v3    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public isOne()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .param p1, "factor"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 338
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 339
    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 2
    .param p1, "factor"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 350
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 361
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 364
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 365
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 366
    return-void

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public power(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 684
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 686
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0

    .line 689
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    .line 690
    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    .line 691
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    if-nez p1, :cond_1

    .line 693
    return-object v1

    .line 696
    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 697
    .local v2, "x":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 698
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 700
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v3, v4, :cond_3

    .line 702
    shl-int v4, v0, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 704
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 706
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0

    .line 757
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 759
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->halfTrace()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0

    .line 767
    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    .line 770
    .local v0, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    .line 771
    .local v1, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    .line 773
    .local v2, "w":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v3, v4, :cond_2

    .line 777
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 778
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 779
    invoke-virtual {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 780
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 783
    .end local v0    # "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    return-object v1

    .line 787
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squarePreCalc()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public squareBitwise()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .line 621
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 622
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisBitwise()V

    .line 623
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 624
    return-object v0
.end method

.method public squareMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .line 577
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 578
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisMatrix()V

    .line 579
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 580
    return-object v0
.end method

.method public squarePreCalc()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .line 654
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 655
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 656
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 657
    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    .line 720
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 721
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareRootThis()V

    .line 722
    return-object v0
.end method

.method public squareRootThis()V
    .locals 2

    .line 731
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 732
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 735
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public squareThis()V
    .locals 0

    .line 561
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 562
    return-void
.end method

.method public squareThisBitwise()V
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squareThisBitwise()V

    .line 639
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 640
    return-void
.end method

.method public squareThisMatrix()V
    .locals 5

    .line 595
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 596
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v1, v2, :cond_1

    .line 598
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    .line 599
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 596
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 607
    return-void
.end method

.method public squareThisPreCalc()V
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    .line 672
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    .line 673
    return-void
.end method

.method testBit(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public testRightmostBit()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 977
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radix"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()I
    .locals 3

    .line 801
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;)V

    .line 804
    .local v0, "t":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v1, v2, :cond_0

    .line 806
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 807
    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    const/4 v2, 0x1

    return v2

    .line 814
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;
.source "McEliecePublicKeyParameters.java"


# instance fields
.field private g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "t"    # I
    .param p3, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "t",
            "g"
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;)V

    .line 28
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->n:I

    .line 29
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->t:I

    .line 30
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 31
    return-void
.end method


# virtual methods
.method public getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getN()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->t:I

    return v0
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;
.source "McEliecePrivateKeyParameters.java"


# instance fields
.field private field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

.field private h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

.field private k:I

.field private n:I

.field private oid:Ljava/lang/String;

.field private p1:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

.field private p2:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

.field private qInv:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

.field private sInv:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "k"    # I
    .param p3, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p4, "gp"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p5, "p1"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .param p6, "p2"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .param p7, "sInv"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "k",
            "field",
            "gp",
            "p1",
            "p2",
            "sInv"
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;)V

    .line 63
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    .line 64
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    .line 65
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 66
    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 67
    iput-object p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 68
    iput-object p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 69
    iput-object p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 70
    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 72
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;

    invoke-direct {v0, p3, p4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 75
    .local v0, "ring":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->getSquareRootMatrix()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 76
    return-void
.end method

.method public constructor <init>(II[B[B[B[B[B[B[[B)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "k"    # I
    .param p3, "encField"    # [B
    .param p4, "encGoppaPoly"    # [B
    .param p5, "encSInv"    # [B
    .param p6, "encP1"    # [B
    .param p7, "encP2"    # [B
    .param p8, "encH"    # [B
    .param p9, "encQInv"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "k",
            "encField",
            "encGoppaPoly",
            "encSInv",
            "encP1",
            "encP2",
            "encH",
            "encQInv"
        }
    .end annotation

    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;)V

    .line 100
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    .line 101
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    .line 102
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 103
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, p4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 104
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 105
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v0, p6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 106
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v0, p7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 107
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 108
    array-length v0, p9

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p9

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget-object v4, p9, v0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V

    aput-object v2, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    return v0
.end method

.method public getP1()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getP2()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSInv()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;
.super Ljava/lang/Object;
.source "McElieceKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field private fieldPoly:I

.field private initialized:Z

.field private m:I

.field private mcElieceParams:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

.field private n:I

.field private random:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    .line 29
    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 20

    .line 84
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    if-nez v1, :cond_0

    .line 86
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->initializeDefault()V

    .line 90
    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->m:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->fieldPoly:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>(II)V

    move-object v7, v1

    .line 93
    .local v7, "field":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->t:I

    const/16 v2, 0x49

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v8, v7, v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V

    .line 95
    .local v8, "gp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;

    invoke-direct {v1, v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 98
    .local v1, "ring":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->getSquareRootMatrix()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v2

    .line 101
    .local v2, "sqRootMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v3

    .line 104
    .local v3, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->computeSystematicForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;

    move-result-object v12

    .line 105
    .local v12, "mmp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->getSecondMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v13

    .line 106
    .local v13, "shortH":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->getPermutation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v9

    .line 109
    .local v9, "p1":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->computeTranspose()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 112
    .local v14, "shortG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->extendLeftCompactForm()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v15

    .line 115
    .local v15, "gPrime":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v6

    .line 118
    .local v6, "k":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 119
    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v16

    .line 122
    .local v16, "matrixSandInverse":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v10, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 125
    .local v10, "p2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-virtual {v4, v15}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 126
    .local v4, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v4, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 130
    new-instance v5, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    move-object/from16 v17, v1

    .end local v1    # "ring":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;
    .local v17, "ring":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->t:I

    invoke-direct {v5, v11, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V

    move-object v1, v5

    .line 131
    .local v1, "pubKey":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;
    move-object v5, v4

    .end local v4    # "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .local v5, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;

    move-object v11, v5

    .end local v5    # "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .local v11, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    const/16 v18, 0x1

    aget-object v18, v16, v18

    move-object/from16 v19, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    .end local v11    # "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .local v18, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V

    .line 134
    .local v4, "privKey":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v5, v1, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 70
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    .line 71
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->getM()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->m:I

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->n:I

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->t:I

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->mcElieceParams:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;->getFieldPoly()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->fieldPoly:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->initialized:Z

    .line 78
    return-void
.end method

.method private initializeDefault()V
    .locals 3

    .line 63
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceParameters;)V

    .line 64
    .local v0, "mcParams":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyGenerationParameters;
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 65
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 144
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 140
    return-void
.end method

.class public final Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2Primitives;
.super Ljava/lang/Object;
.source "McElieceCCA2Primitives.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static decryptionPrimitive(Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 14
    .param p0, "privKey"    # Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;
    .param p1, "c"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKey",
            "c"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getK()I

    move-result v0

    .line 65
    .local v0, "k":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getP()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v1

    .line 66
    .local v1, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v2

    .line 67
    .local v2, "field":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    .line 68
    .local v3, "gp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getH()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v4

    .line 69
    .local v4, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getQInv()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 72
    .local v5, "q":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v6

    .line 75
    .local v6, "pInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {p1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 78
    .local v7, "cPInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 81
    .local v8, "syndVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-static {v8, v2, v3, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 82
    .local v9, "errors":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 85
    .local v10, "mG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v10, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 86
    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 89
    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v11

    .line 92
    .local v11, "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    const/4 v12, 0x2

    new-array v12, v12, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    return-object v12
.end method

.method public static decryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 14
    .param p0, "privKey"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
    .param p1, "c"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKey",
            "c"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    .line 101
    .local v0, "k":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getP()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v1

    .line 102
    .local v1, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v2

    .line 103
    .local v2, "field":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    .line 104
    .local v3, "gp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getH()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v4

    .line 105
    .local v4, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getQInv()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 108
    .local v5, "q":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v6

    .line 111
    .local v6, "pInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {p1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 114
    .local v7, "cPInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 117
    .local v8, "syndVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-static {v8, v2, v3, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 118
    .local v9, "errors":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 121
    .local v10, "mG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v10, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 122
    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 125
    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v11

    .line 128
    .local v11, "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    const/4 v12, 0x2

    new-array v12, v12, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    return-object v12
.end method

.method public static encryptionPrimitive(Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 3
    .param p0, "pubKey"    # Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;
    .param p1, "m"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .param p2, "z"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "m",
            "z"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v0

    .line 39
    .local v0, "matrixG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v1

    .line 40
    .local v1, "mG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    return-object v2
.end method

.method public static encryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 3
    .param p0, "pubKey"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    .param p1, "m"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .param p2, "z"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "m",
            "z"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v0

    .line 48
    .local v0, "matrixG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v1

    .line 49
    .local v1, "mG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    return-object v2
.end method

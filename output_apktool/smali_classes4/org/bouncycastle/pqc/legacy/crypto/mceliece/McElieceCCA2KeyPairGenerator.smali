.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;
.super Ljava/lang/Object;
.source "McElieceCCA2KeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2"


# instance fields
.field private fieldPoly:I

.field private initialized:Z

.field private m:I

.field private mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

.field private n:I

.field private random:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initialized:Z

    return-void
.end method

.method private initializeDefault()V
    .locals 3

    .line 56
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;)V

    .line 57
    .local v0, "mcCCA2Params":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 58
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 12

    .line 80
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initializeDefault()V

    .line 86
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->m:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->fieldPoly:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>(II)V

    move-object v6, v0

    .line 89
    .local v6, "field":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->t:I

    const/16 v1, 0x49

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v7, v6, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V

    .line 93
    .local v7, "gp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v0

    .line 96
    .local v0, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->computeSystematicForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;

    move-result-object v1

    .line 97
    .local v1, "mmp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->getSecondMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v2

    .line 98
    .local v2, "shortH":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;->getPermutation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v8

    .line 101
    .local v8, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->computeTranspose()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 104
    .local v10, "shortG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v5

    .line 107
    .local v5, "k":I
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->n:I

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->t:I

    iget-object v11, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v4, v9, v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Ljava/lang/String;)V

    move-object v11, v3

    .line 108
    .local v11, "pubKey":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->n:I

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;Ljava/lang/String;)V

    .line 111
    .local v3, "privKey":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
    new-instance v4, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v4, v11, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v4
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
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

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    .line 67
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->getM()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->m:I

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->n:I

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->t:I

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->mcElieceCCA2Params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;->getFieldPoly()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->fieldPoly:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyPairGenerator;->initialized:Z

    .line 74
    return-void
.end method

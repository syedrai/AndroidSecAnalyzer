.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;
.super Ljava/lang/Object;
.source "McElieceCipher.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public cipherTextSize:I

.field private forEncryption:Z

.field private k:I

.field private key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

.field public maxPlainTextSize:I

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeMessage(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[B
    .locals 4
    .param p1, "mr"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    .line 216
    .local v0, "mrBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 222
    :cond_0
    if-ltz v1, :cond_1

    aget-byte v3, v0, v1

    if-ne v3, v2, :cond_1

    .line 228
    new-array v2, v1, [B

    .line 229
    .local v2, "mBytes":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-object v2

    .line 224
    .end local v2    # "mBytes":[B
    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "Bad Padding: invalid ciphertext"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private computeMessageRepresentative([B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 4
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 149
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 150
    .local v0, "data":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v1, p1

    aput-byte v2, v0, v1

    .line 152
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v1

    return-object v1
.end method

.method private initCipherDecrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privKey"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->n:I

    .line 119
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    .line 121
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    .line 122
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    .line 123
    return-void
.end method

.method private initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->n:I

    .line 109
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    .line 110
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->t:I

    .line 111
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    .line 112
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    .line 113
    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    return v0

    .line 97
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    return v0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "param"
        }
    .end annotation

    .line 55
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->forEncryption:Z

    .line 56
    if-eqz p1, :cond_1

    .line 58
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 62
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 63
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    .line 64
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;)V

    .line 66
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 70
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 76
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;)V

    .line 80
    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 19
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 165
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-nez v1, :cond_0

    .line 170
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->n:I

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v1

    .line 171
    .local v1, "vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    check-cast v3, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;

    .line 172
    .local v3, "privKey":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v4

    .line 173
    .local v4, "field":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getGoppaPoly()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 174
    .local v5, "gp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getSInv()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v6

    .line 175
    .local v6, "sInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getP1()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v7

    .line 176
    .local v7, "p1":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getP2()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v8

    .line 177
    .local v8, "p2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getH()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v9

    .line 178
    .local v9, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;->getQInv()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 181
    .local v10, "qInv":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v11

    .line 184
    .local v11, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    move-result-object v12

    .line 187
    .local v12, "pInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v1, v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 190
    .local v13, "cPInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v9, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 193
    .local v14, "syndrome":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-static {v14, v4, v5, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v15

    .line 194
    .local v15, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v13, v15}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .local v17, "vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    move-object/from16 v1, v16

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 197
    .local v1, "mSG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 198
    invoke-virtual {v15, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 201
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->k:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v2

    .line 204
    .local v2, "mS":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v16

    move-object/from16 v18, v1

    .end local v1    # "mSG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .local v18, "mSG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    move-object/from16 v1, v16

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 207
    .local v1, "mVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->computeMessage(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[B

    move-result-object v16

    return-object v16

    .line 167
    .end local v1    # "mVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v2    # "mS":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v3    # "privKey":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePrivateKeyParameters;
    .end local v4    # "field":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .end local v5    # "gp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v6    # "sInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .end local v7    # "p1":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .end local v8    # "p2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .end local v9    # "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .end local v10    # "qInv":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v11    # "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .end local v12    # "pInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .end local v13    # "cPInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v14    # "syndrome":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v15    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v17    # "vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v18    # "mSG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipher initialised for decryption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public messageEncrypt([B)[B
    .locals 6
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->computeMessageRepresentative([B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v0

    .line 138
    .local v0, "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->t:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(IILjava/security/SecureRandom;)V

    .line 140
    .local v1, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePublicKeyParameters;->getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v2

    .line 141
    .local v2, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v3

    .line 142
    .local v3, "mG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 144
    .local v4, "mGZ":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v5

    return-object v5

    .line 135
    .end local v0    # "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v1    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v2    # "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .end local v3    # "mG":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .end local v4    # "mGZ":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher initialised for decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;
.super Ljava/lang/Object;
.source "McEliecePointchevalCipher.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.2"


# instance fields
.field private forEncryption:Z

.field private k:I

.field key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/bouncycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherDecrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privKey"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 123
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->n:I

    .line 124
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->k:I

    .line 125
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->t:I

    .line 126
    return-void
.end method

.method private initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 115
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->n:I

    .line 116
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->k:I

    .line 117
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->t:I

    .line 118
    return-void
.end method


# virtual methods
.method protected decryptOutputSize(I)I
    .locals 1
    .param p1, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inLen"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected encryptOutputSize(I)I
    .locals 1
    .param p1, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inLen"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getKeySize(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    return v0

    .line 92
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    return v0

    .line 96
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

    .line 48
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->forEncryption:Z

    .line 50
    if-eqz p1, :cond_1

    .line 52
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 56
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    .line 57
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 58
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 60
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    .line 64
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 70
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    .line 74
    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 17
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

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->forEncryption:Z

    if-nez v2, :cond_2

    .line 196
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->n:I

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v2, v2, 0x3

    .line 197
    .local v2, "c1Len":I
    array-length v3, v1

    sub-int/2addr v3, v2

    .line 200
    .local v3, "c2Len":I
    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v4

    .line 201
    .local v4, "c1c2":[[B
    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 202
    .local v6, "c1":[B
    const/4 v7, 0x1

    aget-object v8, v4, v7

    .line 205
    .local v8, "c2":[B
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->n:I

    invoke-static {v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 206
    .local v9, "c1Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v10, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v10, v9}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 208
    .local v10, "c1Dec":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    aget-object v11, v10, v5

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v11

    .line 210
    .local v11, "rPrimeBytes":[B
    aget-object v7, v10, v7

    .line 213
    .local v7, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    new-instance v12, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v12, v13}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 216
    .local v12, "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v12, v11}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 219
    new-array v13, v3, [B

    .line 220
    .local v13, "mrBytes":[B
    invoke-virtual {v12, v13}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 223
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v3, :cond_0

    .line 225
    aget-byte v15, v13, v14

    aget-byte v16, v8, v14

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 223
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 229
    .end local v14    # "i":I
    :cond_0
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v13

    invoke-interface {v14, v13, v5, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 230
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    new-array v14, v14, [B

    .line 231
    .local v14, "hmr":[B
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v15, v14, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 234
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->n:I

    const/16 v16, 0x0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->t:I

    invoke-static {v15, v5, v14}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v5

    .line 237
    .end local v9    # "c1Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .local v5, "c1Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v5, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 243
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->k:I

    shr-int/lit8 v9, v9, 0x3

    .line 244
    .local v9, "kDiv8":I
    sub-int v15, v3, v9

    invoke-static {v13, v15}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v15

    .line 247
    .local v15, "mr":[[B
    aget-object v16, v15, v16

    return-object v16

    .line 239
    .end local v9    # "kDiv8":I
    .end local v15    # "mr":[[B
    :cond_1
    new-instance v9, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v15, "Bad Padding: Invalid ciphertext."

    invoke-direct {v9, v15}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 193
    .end local v2    # "c1Len":I
    .end local v3    # "c2Len":I
    .end local v4    # "c1c2":[[B
    .end local v5    # "c1Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v6    # "c1":[B
    .end local v7    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v8    # "c2":[B
    .end local v10    # "c1Dec":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v11    # "rPrimeBytes":[B
    .end local v12    # "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    .end local v13    # "mrBytes":[B
    .end local v14    # "hmr":[B
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cipher initialised for decryption"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public messageEncrypt([B)[B
    .locals 14
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    .line 135
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    .line 138
    .local v0, "kDiv8":I
    new-array v1, v0, [B

    .line 139
    .local v1, "r":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 142
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->k:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    .line 145
    .local v2, "rPrime":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v3

    .line 148
    .local v3, "rPrimeBytes":[B
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v4

    .line 151
    .local v4, "mr":[B
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 152
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 153
    .local v5, "hmr":[B
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v5, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 157
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->n:I

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->t:I

    invoke-static {v6, v7, v5}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v6

    .line 160
    .local v6, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McEliecePointchevalCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v7, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v7, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v7

    .line 161
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v7

    .line 164
    .local v7, "c1":[B
    new-instance v8, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v9, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 167
    .local v8, "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v8, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 170
    array-length v9, p1

    add-int/2addr v9, v0

    new-array v9, v9, [B

    .line 171
    .local v9, "c2":[B
    invoke-virtual {v8, v9}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 174
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v11, p1

    if-ge v10, v11, :cond_0

    .line 176
    aget-byte v11, v9, v10

    aget-byte v12, p1, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 174
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 179
    .end local v10    # "i":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v0, :cond_1

    .line 181
    array-length v11, p1

    add-int/2addr v11, v10

    aget-byte v12, v9, v11

    aget-byte v13, v1, v10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    .line 179
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 185
    .end local v10    # "i":I
    :cond_1
    invoke-static {v7, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v10

    return-object v10

    .line 132
    .end local v0    # "kDiv8":I
    .end local v1    # "r":[B
    .end local v2    # "rPrime":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v3    # "rPrimeBytes":[B
    .end local v4    # "mr":[B
    .end local v5    # "hmr":[B
    .end local v6    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v7    # "c1":[B
    .end local v8    # "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    .end local v9    # "c2":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher initialised for decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

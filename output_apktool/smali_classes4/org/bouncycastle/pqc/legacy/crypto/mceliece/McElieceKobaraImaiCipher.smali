.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;
.source "McElieceKobaraImaiCipher.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field public static final PUBLIC_CONSTANT:[B


# instance fields
.field private forEncryption:Z

.field private k:I

.field key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/bouncycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 38
    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    .line 37
    return-void
.end method

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

    .line 115
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 116
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 117
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 118
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    .line 119
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

    .line 106
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 107
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 108
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 109
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    .line 111
    return-void
.end method


# virtual methods
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

    .line 92
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    return v0

    .line 97
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

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

    .line 57
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    .line 58
    if-eqz p1, :cond_1

    .line 60
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 64
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 65
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 66
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 68
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 72
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 78
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    .line 82
    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 26
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

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-nez v2, :cond_8

    .line 228
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    shr-int/lit8 v2, v2, 0x3

    .line 230
    .local v2, "nDiv8":I
    array-length v3, v1

    if-lt v3, v2, :cond_7

    .line 235
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 236
    .local v3, "c2Len":I
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v4, v4, 0x3

    .line 237
    .local v4, "c4Len":I
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x3

    .line 238
    .local v5, "c5Len":I
    array-length v7, v1

    sub-int/2addr v7, v2

    .line 242
    .local v7, "c6Len":I
    const/4 v8, 0x0

    if-lez v7, :cond_0

    .line 244
    invoke-static {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v9

    .line 245
    .local v9, "c6EncC4":[[B
    aget-object v10, v9, v8

    .line 246
    .local v10, "c6":[B
    aget-object v9, v9, v6

    .line 247
    .local v9, "encC4":[B
    goto :goto_0

    .line 250
    .end local v9    # "encC4":[B
    .end local v10    # "c6":[B
    :cond_0
    new-array v10, v8, [B

    .line 251
    .restart local v10    # "c6":[B
    move-object/from16 v9, p1

    .line 255
    .restart local v9    # "encC4":[B
    :goto_0
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-static {v11, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v11

    .line 258
    .local v11, "encC4Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v12, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v12, v11}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v12

    .line 260
    .local v12, "c4z":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    aget-object v13, v12, v8

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v13

    .line 261
    .local v13, "c4":[B
    aget-object v14, v12, v6

    .line 264
    .local v14, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    array-length v15, v13

    if-le v15, v4, :cond_1

    .line 267
    invoke-static {v13, v8, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v13

    .line 271
    :cond_1
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    const/16 v16, 0x1

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v15, v6, v14}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->decode(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[B

    move-result-object v6

    .line 274
    .local v6, "c5":[B
    array-length v15, v6

    if-ge v15, v5, :cond_2

    .line 276
    new-array v15, v5, [B

    .line 277
    .local v15, "paddedC5":[B
    array-length v8, v6

    sub-int v8, v5, v8

    array-length v1, v6

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "nDiv8":I
    .local v18, "nDiv8":I
    invoke-static {v6, v2, v15, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    move-object v6, v15

    goto :goto_1

    .line 274
    .end local v15    # "paddedC5":[B
    .end local v18    # "nDiv8":I
    .restart local v2    # "nDiv8":I
    :cond_2
    move/from16 v18, v2

    .line 282
    .end local v2    # "nDiv8":I
    .restart local v18    # "nDiv8":I
    :goto_1
    invoke-static {v10, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v1

    .line 283
    .local v1, "c6c5c4":[B
    invoke-static {v1, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v1

    .line 287
    array-length v2, v1

    sub-int/2addr v2, v3

    .line 288
    .local v2, "c1Len":I
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v8

    .line 289
    .local v8, "c2c1":[[B
    const/4 v15, 0x0

    aget-object v19, v8, v15

    .line 290
    .local v19, "c2":[B
    aget-object v15, v8, v16

    .line 293
    .local v15, "c1":[B
    move-object/from16 v20, v1

    .end local v1    # "c6c5c4":[B
    .local v20, "c6c5c4":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 294
    .local v1, "rPrime":[B
    move/from16 v21, v3

    .end local v3    # "c2Len":I
    .local v21, "c2Len":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    move/from16 v22, v4

    .end local v4    # "c4Len":I
    .local v22, "c4Len":I
    array-length v4, v15

    move/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "c5Len":I
    .local v23, "c5Len":I
    invoke-interface {v3, v15, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 295
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 298
    add-int/lit8 v3, v21, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_3

    .line 300
    aget-byte v4, v1, v3

    aget-byte v5, v19, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 298
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 304
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 307
    .local v3, "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v3, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 310
    new-array v4, v2, [B

    .line 311
    .local v4, "mConstPrime":[B
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 314
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_4

    .line 316
    aget-byte v24, v4, v5

    aget-byte v25, v15, v5

    xor-int v0, v24, v25

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 314
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 319
    .end local v5    # "i":I
    :cond_4
    array-length v0, v4

    const-string v5, "Bad Padding: invalid ciphertext"

    if-lt v0, v2, :cond_6

    .line 324
    sget-object v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v0, v0

    sub-int v0, v2, v0

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v0

    .line 326
    .local v0, "temp":[[B
    const/16 v17, 0x0

    aget-object v17, v0, v17

    .line 327
    .local v17, "mr":[B
    move-object/from16 v24, v0

    .end local v0    # "temp":[[B
    .local v24, "temp":[[B
    aget-object v0, v24, v16

    .line 329
    .local v0, "constPrime":[B
    move-object/from16 v16, v1

    .end local v1    # "rPrime":[B
    .local v16, "rPrime":[B
    sget-object v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 334
    return-object v17

    .line 331
    :cond_5
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v1, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    .end local v0    # "constPrime":[B
    .end local v16    # "rPrime":[B
    .end local v17    # "mr":[B
    .end local v24    # "temp":[[B
    .restart local v1    # "rPrime":[B
    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    .end local v1    # "rPrime":[B
    .end local v3    # "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    .end local v4    # "mConstPrime":[B
    .end local v6    # "c5":[B
    .end local v7    # "c6Len":I
    .end local v8    # "c2c1":[[B
    .end local v9    # "encC4":[B
    .end local v10    # "c6":[B
    .end local v11    # "encC4Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v12    # "c4z":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v13    # "c4":[B
    .end local v14    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v15    # "c1":[B
    .end local v18    # "nDiv8":I
    .end local v19    # "c2":[B
    .end local v20    # "c6c5c4":[B
    .end local v21    # "c2Len":I
    .end local v22    # "c4Len":I
    .end local v23    # "c5Len":I
    .local v2, "nDiv8":I
    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Bad Padding: Ciphertext too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    .end local v2    # "nDiv8":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher initialised for decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageEncrypt([B)[B
    .locals 20
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-eqz v2, :cond_5

    .line 128
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 129
    .local v2, "c2Len":I
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v3, v3, 0x3

    .line 130
    .local v3, "c4Len":I
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x3

    .line 133
    .local v4, "c5Len":I
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    sget-object v6, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    .line 134
    .local v5, "mLen":I
    array-length v6, v1

    if-le v6, v5, :cond_0

    .line 136
    array-length v5, v1

    .line 139
    :cond_0
    sget-object v6, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v6, v6

    add-int/2addr v6, v5

    .line 140
    .local v6, "c1Len":I
    add-int v7, v6, v2

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    .line 143
    .local v7, "c6Len":I
    new-array v8, v6, [B

    .line 144
    .local v8, "mConst":[B
    array-length v9, v1

    const/4 v10, 0x0

    invoke-static {v1, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    sget-object v9, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    sget-object v11, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v11, v11

    invoke-static {v9, v10, v8, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    new-array v9, v2, [B

    .line 150
    .local v9, "r":[B
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v11, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 154
    new-instance v11, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v12, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v12}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v11, v12}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 157
    .local v11, "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v11, v9}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 160
    new-array v12, v6, [B

    .line 161
    .local v12, "c1":[B
    invoke-virtual {v11, v12}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 164
    add-int/lit8 v13, v6, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_1

    .line 166
    aget-byte v14, v12, v13

    aget-byte v15, v8, v13

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 164
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 170
    .end local v13    # "i":I
    :cond_1
    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v13, v13, [B

    .line 171
    .local v13, "c2":[B
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v12

    invoke-interface {v14, v12, v10, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 172
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14, v13, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 175
    add-int/lit8 v14, v2, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_2

    .line 177
    aget-byte v15, v13, v14

    aget-byte v16, v9, v14

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 175
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 181
    .end local v14    # "i":I
    :cond_2
    invoke-static {v13, v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v14

    .line 186
    .local v14, "c2c1":[B
    new-array v15, v10, [B

    .line 187
    .local v15, "c6":[B
    if-lez v7, :cond_3

    .line 189
    new-array v15, v7, [B

    .line 190
    invoke-static {v14, v10, v15, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :cond_3
    new-array v1, v4, [B

    .line 194
    .local v1, "c5":[B
    invoke-static {v14, v7, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    new-array v10, v3, [B

    .line 197
    .local v10, "c4":[B
    move/from16 v17, v2

    .end local v2    # "c2Len":I
    .local v17, "c2Len":I
    add-int v2, v7, v4

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "c5Len":I
    .local v18, "c5Len":I
    invoke-static {v14, v2, v10, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-static {v2, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v2

    .line 203
    .local v2, "c4Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v16, v3

    .end local v3    # "c4Len":I
    .local v16, "c4Len":I
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v4, v3, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v3

    .line 206
    .local v3, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v4, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v4

    .line 207
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v4

    .line 210
    .local v4, "encC4":[B
    if-lez v7, :cond_4

    .line 213
    invoke-static {v15, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v19

    return-object v19

    .line 216
    :cond_4
    return-object v4

    .line 125
    .end local v1    # "c5":[B
    .end local v2    # "c4Vec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v3    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v4    # "encC4":[B
    .end local v5    # "mLen":I
    .end local v6    # "c1Len":I
    .end local v7    # "c6Len":I
    .end local v8    # "mConst":[B
    .end local v9    # "r":[B
    .end local v10    # "c4":[B
    .end local v11    # "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    .end local v12    # "c1":[B
    .end local v13    # "c2":[B
    .end local v14    # "c2c1":[B
    .end local v15    # "c6":[B
    .end local v16    # "c4Len":I
    .end local v17    # "c2Len":I
    .end local v18    # "c5Len":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipher initialised for decryption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

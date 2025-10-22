.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;
.super Ljava/lang/Object;
.source "McElieceFujisakiCipher.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.1"


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

    .line 25
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

    .line 106
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 107
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->n:I

    .line 108
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->t:I

    .line 109
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

    .line 97
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 98
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->n:I

    .line 99
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->k:I

    .line 100
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->t:I

    .line 101
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 82
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    return v0

    .line 86
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    return v0

    .line 90
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

    .line 51
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->forEncryption:Z

    .line 52
    if-eqz p1, :cond_1

    .line 54
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 56
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 58
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    .line 59
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 60
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 62
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    .line 66
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 72
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    .line 75
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

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->forEncryption:Z

    if-nez v2, :cond_2

    .line 168
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->n:I

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v2, v2, 0x3

    .line 169
    .local v2, "c1Len":I
    array-length v3, v1

    sub-int/2addr v3, v2

    .line 172
    .local v3, "c2Len":I
    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v4

    .line 173
    .local v4, "c1c2":[[B
    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 174
    .local v6, "c1":[B
    const/4 v7, 0x1

    aget-object v8, v4, v7

    .line 177
    .local v8, "c2":[B
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->n:I

    invoke-static {v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 178
    .local v9, "hrmVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v10, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v10, v9}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 179
    .local v10, "decC1":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    aget-object v11, v10, v5

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v11

    .line 181
    .local v11, "rBytes":[B
    aget-object v7, v10, v7

    .line 184
    .local v7, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    new-instance v12, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v12, v13}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 187
    .local v12, "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v12, v11}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 190
    new-array v13, v3, [B

    .line 191
    .local v13, "mBytes":[B
    invoke-virtual {v12, v13}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 194
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v3, :cond_0

    .line 196
    aget-byte v15, v13, v14

    aget-byte v16, v8, v14

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 194
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 200
    .end local v14    # "i":I
    :cond_0
    invoke-static {v11, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v14

    .line 201
    .local v14, "rmBytes":[B
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v15}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v15

    new-array v15, v15, [B

    .line 202
    .local v15, "hrm":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    move/from16 v16, v2

    .end local v2    # "c1Len":I
    .local v16, "c1Len":I
    array-length v2, v14

    invoke-interface {v1, v14, v5, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 203
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v15, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 207
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->n:I

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->t:I

    invoke-static {v1, v2, v15}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v1

    .line 210
    .end local v9    # "hrmVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .local v1, "hrmVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    return-object v13

    .line 212
    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "Bad Padding: invalid ciphertext"

    invoke-direct {v2, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v1    # "hrmVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v3    # "c2Len":I
    .end local v4    # "c1c2":[[B
    .end local v6    # "c1":[B
    .end local v7    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v8    # "c2":[B
    .end local v10    # "decC1":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v11    # "rBytes":[B
    .end local v12    # "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    .end local v13    # "mBytes":[B
    .end local v14    # "rmBytes":[B
    .end local v15    # "hrm":[B
    .end local v16    # "c1Len":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipher initialised for decryption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public messageEncrypt([B)[B
    .locals 11
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->forEncryption:Z

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->k:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    .line 123
    .local v0, "r":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v1

    .line 126
    .local v1, "rBytes":[B
    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v2

    .line 129
    .local v2, "rm":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 130
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 131
    .local v3, "hrm":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 134
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->n:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->t:I

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v4

    .line 137
    .local v4, "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v5, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v5, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v5

    .line 141
    .local v5, "c1":[B
    new-instance v6, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v7}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 144
    .local v6, "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v6, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 147
    array-length v7, p1

    new-array v7, v7, [B

    .line 148
    .local v7, "c2":[B
    invoke-virtual {v6, v7}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 151
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 153
    aget-byte v9, v7, v8

    aget-byte v10, p1, v8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .end local v8    # "i":I
    :cond_0
    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v8

    return-object v8

    .line 116
    .end local v0    # "r":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v1    # "rBytes":[B
    .end local v2    # "rm":[B
    .end local v3    # "hrm":[B
    .end local v4    # "z":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v5    # "c1":[B
    .end local v6    # "sr0":Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
    .end local v7    # "c2":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher initialised for decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;
.super Ljava/lang/Object;
.source "CTRSP800DRBG.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final AES_MAX_BITS_REQUEST:I = 0x40000

.field private static final AES_RESEED_MAX:J = 0x800000000000L

.field private static final K_BITS:[B

.field private static final TDEA_MAX_BITS_REQUEST:I = 0x1000

.field private static final TDEA_RESEED_MAX:J = 0x80000000L


# instance fields
.field private _Key:[B

.field private _V:[B

.field private _engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _isTDEA:Z

.field private _keySizeInBits:I

.field private _reseedCounter:J

.field private _securityStrength:I

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "keySizeInBits"    # I
    .param p3, "securityStrength"    # I
    .param p4, "entropySource"    # Lorg/bouncycastle/crypto/prng/EntropySource;
    .param p5, "personalizationString"    # [B
    .param p6, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "keySizeInBits",
            "securityStrength",
            "entropySource",
            "personalizationString",
            "nonce"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    .line 47
    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 50
    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    .line 51
    iput p3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_securityStrength:I

    .line 52
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    .line 53
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/bouncycastle/crypto/BlockCipher;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    .line 55
    const/16 v0, 0x100

    if-gt p3, v0, :cond_2

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/BlockCipher;I)I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 65
    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p3, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 72
    .local v0, "entropy":[B
    invoke-direct {p0, v0, p6, p5}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Instantiate_algorithm([B[B[B)V

    .line 73
    return-void

    .line 67
    .end local v0    # "entropy":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private BCC([B[B[B[B)V
    .locals 10
    .param p1, "bccOut"    # [B
    .param p2, "k"    # [B
    .param p3, "iV"    # [B
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bccOut",
            "k",
            "iV",
            "data"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    .line 291
    .local v1, "blockSize":I
    new-array v2, v1, [B

    .line 292
    .local v2, "chainingValue":[B
    array-length v0, p4

    div-int/2addr v0, v1

    .line 294
    .local v0, "n":I
    new-array v6, v1, [B

    .line 296
    .local v6, "inputBlock":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v5, 0x1

    invoke-interface {v3, v5, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 298
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v8, 0x0

    invoke-interface {v3, p3, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 300
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_0
    if-ge v9, v0, :cond_0

    .line 302
    mul-int v5, v9, v1

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v4, p4

    .end local p4    # "data":[B
    .local v4, "data":[B
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 303
    iget-object p4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p4, v6, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 300
    add-int/lit8 v9, v9, 0x1

    move-object p4, v4

    goto :goto_0

    .end local v4    # "data":[B
    .restart local p4    # "data":[B
    :cond_0
    move-object v4, p4

    .line 306
    .end local v9    # "i":I
    .end local p4    # "data":[B
    .restart local v4    # "data":[B
    array-length p4, p1

    invoke-static {v2, v8, p1, v8, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-void
.end method

.method private Block_Cipher_df([BI)[B
    .locals 18
    .param p1, "inputString"    # [B
    .param p2, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputString",
            "bitLength"
        }
    .end annotation

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    .line 218
    .local v2, "outLen":I
    array-length v3, v1

    .line 219
    .local v3, "L":I
    div-int/lit8 v4, p2, 0x8

    .line 221
    .local v4, "N":I
    add-int/lit8 v5, v3, 0x8

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 222
    .local v5, "sLen":I
    add-int v7, v5, v2

    sub-int/2addr v7, v6

    div-int/2addr v7, v2

    mul-int v7, v7, v2

    .line 223
    .local v7, "blockLen":I
    new-array v8, v7, [B

    .line 224
    .local v8, "S":[B
    const/4 v9, 0x0

    invoke-direct {v0, v8, v3, v9}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 225
    const/4 v10, 0x4

    invoke-direct {v0, v8, v4, v10}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 226
    const/16 v10, 0x8

    invoke-static {v1, v9, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    add-int/lit8 v11, v3, 0x8

    const/16 v12, -0x80

    aput-byte v12, v8, v11

    .line 230
    iget v11, v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    div-int/2addr v11, v10

    add-int/2addr v11, v2

    new-array v11, v11, [B

    .line 231
    .local v11, "temp":[B
    new-array v12, v2, [B

    .line 233
    .local v12, "bccOut":[B
    new-array v13, v2, [B

    .line 235
    .local v13, "IV":[B
    const/4 v14, 0x0

    .line 236
    .local v14, "i":I
    iget v15, v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    div-int/2addr v15, v10

    new-array v15, v15, [B

    .line 237
    .local v15, "K":[B
    const/16 v16, 0x8

    sget-object v10, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    array-length v6, v15

    invoke-static {v10, v9, v15, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    :goto_0
    mul-int v6, v14, v2

    mul-int/lit8 v6, v6, 0x8

    iget v10, v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    mul-int/lit8 v17, v2, 0x8

    add-int v10, v10, v17

    if-ge v6, v10, :cond_1

    .line 241
    invoke-direct {v0, v13, v14, v9}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 242
    invoke-direct {v0, v12, v15, v13, v8}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->BCC([B[B[B[B)V

    .line 244
    array-length v6, v11

    mul-int v10, v14, v2

    sub-int/2addr v6, v10

    if-le v6, v2, :cond_0

    .line 245
    move v6, v2

    goto :goto_1

    .line 246
    :cond_0
    array-length v6, v11

    mul-int v10, v14, v2

    sub-int/2addr v6, v10

    :goto_1
    nop

    .line 248
    .local v6, "bytesToCopy":I
    mul-int v10, v14, v2

    invoke-static {v12, v9, v11, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    nop

    .end local v6    # "bytesToCopy":I
    add-int/lit8 v14, v14, 0x1

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    new-array v6, v2, [B

    .line 253
    .local v6, "X":[B
    array-length v10, v15

    invoke-static {v11, v9, v15, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    array-length v10, v15

    array-length v1, v6

    invoke-static {v11, v10, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    div-int/lit8 v1, p2, 0x8

    new-array v1, v1, [B

    .line 258
    .end local v11    # "temp":[B
    .local v1, "temp":[B
    const/4 v10, 0x0

    .line 259
    .end local v14    # "i":I
    .local v10, "i":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v14, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, v15}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v9

    invoke-direct {v14, v9}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v9, 0x1

    invoke-interface {v11, v9, v14}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 261
    :goto_2
    mul-int v9, v10, v2

    array-length v11, v1

    if-ge v9, v11, :cond_3

    .line 263
    iget-object v9, v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v11, 0x0

    invoke-interface {v9, v6, v11, v6, v11}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 265
    array-length v9, v1

    mul-int v11, v10, v2

    sub-int/2addr v9, v11

    if-le v9, v2, :cond_2

    .line 266
    move v9, v2

    goto :goto_3

    .line 267
    :cond_2
    array-length v9, v1

    mul-int v11, v10, v2

    sub-int/2addr v9, v11

    :goto_3
    nop

    .line 269
    .local v9, "bytesToCopy":I
    mul-int v11, v10, v2

    const/4 v14, 0x0

    invoke-static {v6, v14, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    nop

    .end local v9    # "bytesToCopy":I
    add-int/lit8 v10, v10, 0x1

    .line 271
    goto :goto_2

    .line 273
    :cond_3
    return-object v1
.end method

.method private CTR_DRBG_Instantiate_algorithm([B[B[B)V
    .locals 5
    .param p1, "entropy"    # [B
    .param p2, "nonce"    # [B
    .param p3, "personalisationString"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entropy",
            "nonce",
            "personalisationString"
        }
    .end annotation

    .line 78
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    .line 79
    .local v0, "seedMaterial":[B
    iget v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v1

    .line 81
    .local v1, "seed":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    .line 83
    .local v2, "outlen":I
    iget v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    .line 84
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    .line 87
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v1, v3, v4}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 89
    const-wide/16 v3, 0x1

    iput-wide v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 90
    return-void
.end method

.method private CTR_DRBG_Reseed_algorithm([B)V
    .locals 3
    .param p1, "additionalInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalInput"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 123
    .local v0, "seedMaterial":[B
    iget v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 127
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 128
    return-void
.end method

.method private CTR_DRBG_Update([B[B[B)V
    .locals 7
    .param p1, "seed"    # [B
    .param p2, "key"    # [B
    .param p3, "v"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "key",
            "v"
        }
    .end annotation

    .line 94
    array-length v0, p1

    new-array v0, v0, [B

    .line 95
    .local v0, "temp":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 97
    .local v1, "outputBlock":[B
    const/4 v2, 0x0

    .line 98
    .local v2, "i":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    .line 100
    .local v3, "outLen":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 101
    :goto_0
    mul-int v4, v2, v3

    array-length v5, p1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 103
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    .line 104
    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, p3, v6, v1, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 106
    array-length v4, v0

    mul-int v5, v2, v3

    sub-int/2addr v4, v5

    if-le v4, v3, :cond_0

    .line 107
    move v4, v3

    goto :goto_1

    :cond_0
    array-length v4, v0

    mul-int v5, v2, v3

    sub-int/2addr v4, v5

    .line 109
    .local v4, "bytesToCopy":I
    :goto_1
    mul-int v5, v2, v3

    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    nop

    .end local v4    # "bytesToCopy":I
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    array-length v4, p1

    invoke-static {v4, p1, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 115
    array-length v4, p2

    invoke-static {v0, v6, p2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v4, p2

    array-length v5, p3

    invoke-static {v0, v4, p3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-void
.end method

.method private addOneTo([B)V
    .locals 5
    .param p1, "longer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longer"
        }
    .end annotation

    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "carry":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 135
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 136
    .local v2, "res":I
    if-le v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 137
    array-length v3, p1

    sub-int/2addr v3, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    .line 133
    .end local v2    # "res":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private copyIntToByteArray([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "value"    # I
    .param p3, "offSet"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "value",
            "offSet"
        }
    .end annotation

    .line 311
    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 312
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 313
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 314
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 315
    return-void
.end method

.method private getEntropy()[B
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 144
    .local v0, "entropy":[B
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    .line 148
    return-object v0

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Insufficient entropy provided by entropy source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getMaxSecurityStrength(Lorg/bouncycastle/crypto/BlockCipher;I)I
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "keySizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "keySizeInBits"
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/bouncycastle/crypto/BlockCipher;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_0

    .line 425
    const/16 v0, 0x70

    return v0

    .line 427
    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    return p2

    .line 432
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isTDEA(Lorg/bouncycastle/crypto/BlockCipher;)Z
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 418
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDEA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private padKey([BI[BI)V
    .locals 5
    .param p1, "keyMaster"    # [B
    .param p2, "keyOff"    # I
    .param p3, "tmp"    # [B
    .param p4, "tmpOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyMaster",
            "keyOff",
            "tmp",
            "tmpOff"
        }
    .end annotation

    .line 464
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 465
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xfc

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 466
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf8

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 467
    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 468
    add-int/lit8 v0, p4, 0x4

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xe0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 469
    add-int/lit8 v0, p4, 0x5

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 470
    add-int/lit8 v0, p4, 0x6

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 471
    add-int/lit8 v0, p4, 0x7

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 473
    move v0, p4

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p4, 0x7

    if-gt v0, v1, :cond_0

    .line 475
    aget-byte v1, p3, v0

    .line 476
    .local v1, "b":I
    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    .line 473
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method expandKey([B)[B
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    if-eqz v0, :cond_0

    .line 440
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 442
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    .line 443
    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    .line 444
    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    .line 446
    return-object v0

    .line 450
    .end local v0    # "tmp":[B
    :cond_0
    return-object p1
.end method

.method public generate([B[BZ)I
    .locals 6
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "additionalInput",
            "predictionResistant"
        }
    .end annotation

    .line 338
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 340
    iget-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v4, 0x80000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 342
    return v1

    .line 345
    :cond_0
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 4096"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2
    iget-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v4, 0x800000000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 354
    return v1

    .line 357
    :cond_3
    const v0, 0x8000

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_9

    .line 363
    :goto_0
    if-eqz p3, :cond_4

    .line 365
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm([B)V

    .line 366
    const/4 p2, 0x0

    .line 369
    :cond_4
    if-eqz p2, :cond_5

    .line 371
    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object p2

    .line 372
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p2, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    goto :goto_1

    .line 376
    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    div-int/lit8 v0, v0, 0x8

    new-array p2, v0, [B

    .line 379
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 381
    .local v0, "out":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    array-length v3, v0

    div-int/2addr v2, v3

    if-gt v1, v2, :cond_8

    .line 385
    array-length v2, p1

    array-length v3, v0

    mul-int v3, v3, v1

    sub-int/2addr v2, v3

    array-length v3, v0

    if-le v2, v3, :cond_6

    .line 386
    array-length v2, v0

    goto :goto_3

    .line 387
    :cond_6
    array-length v2, p1

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v3, v3

    mul-int v3, v3, v1

    sub-int/2addr v2, v3

    :goto_3
    nop

    .line 389
    .local v2, "bytesToCopy":I
    if-eqz v2, :cond_7

    .line 391
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    .line 393
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 395
    array-length v3, v0

    mul-int v3, v3, v1

    invoke-static {v0, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    .end local v2    # "bytesToCopy":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 399
    .end local v1    # "i":I
    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p2, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 401
    iget-wide v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 403
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    return v1

    .line 359
    .end local v0    # "out":[B
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 0
    .param p1, "additionalInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalInput"
        }
    .end annotation

    .line 413
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm([B)V

    .line 414
    return-void
.end method

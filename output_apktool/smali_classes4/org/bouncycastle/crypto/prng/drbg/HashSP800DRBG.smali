.class public Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;
.super Ljava/lang/Object;
.source "HashSP800DRBG.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final ONE:[B

.field private static final RESEED_MAX:J = 0x800000000000L

.field private static final seedlens:Ljava/util/Hashtable;


# instance fields
.field private _C:[B

.field private _V:[B

.field private _digest:Lorg/bouncycastle/crypto/Digest;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _reseedCounter:J

.field private _securityStrength:I

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    .line 25
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const/16 v1, 0x1b8

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v2, "SHA-224"

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v2, "SHA-256"

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v2, "SHA-512/256"

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v2, "SHA-512/224"

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const/16 v1, 0x378

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v2, "SHA-512"

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 8
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "securityStrength"    # I
    .param p3, "entropySource"    # Lorg/bouncycastle/crypto/prng/EntropySource;
    .param p4, "personalizationString"    # [B
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "securityStrength",
            "entropySource",
            "personalizationString",
            "nonce"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 60
    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    .line 66
    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    .line 67
    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_securityStrength:I

    .line 68
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 79
    .local v0, "entropy":[B
    invoke-static {v0, p5, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    .line 80
    .local v1, "seedMaterial":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v2

    .line 82
    .local v2, "seed":[B
    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    .line 83
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 84
    .local v3, "subV":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v4, v3, v5}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    .line 87
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    .line 88
    return-void

    .line 62
    .end local v0    # "entropy":[B
    .end local v1    # "seedMaterial":[B
    .end local v2    # "seed":[B
    .end local v3    # "subV":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addTo([B[B)V
    .locals 8
    .param p1, "longer"    # [B
    .param p2, "shorter"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "longer",
            "shorter"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "carry":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-gt v1, v2, :cond_1

    .line 201
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    array-length v6, p2

    sub-int/2addr v6, v1

    aget-byte v6, p2, v6

    and-int/2addr v6, v4

    add-int/2addr v2, v6

    add-int/2addr v2, v0

    .line 202
    .local v2, "res":I
    if-le v2, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v0, v3

    .line 203
    array-length v3, p1

    sub-int/2addr v3, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    .line 199
    .end local v2    # "res":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_1
    array-length v1, p2

    add-int/2addr v1, v5

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-gt v1, v2, :cond_3

    .line 208
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    add-int/2addr v2, v0

    .line 209
    .restart local v2    # "res":I
    if-le v2, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v0, v6

    .line 210
    array-length v6, p1

    sub-int/2addr v6, v1

    int-to-byte v7, v2

    aput-byte v7, p1, v6

    .line 206
    .end local v2    # "res":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private doHash([B[B)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 257
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p2, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 258
    return-void
.end method

.method private getEntropy()[B
    .locals 3

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 186
    .local v0, "entropy":[B
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    .line 190
    return-object v0

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Insufficient entropy provided by entropy source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hash([B)[B
    .locals 1
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 250
    .local v0, "hash":[B
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->doHash([B[B)V

    .line 251
    return-object v0
.end method

.method private hashgen([BI)[B
    .locals 9
    .param p1, "input"    # [B
    .param p2, "lengthInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "lengthInBits"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 272
    .local v0, "digestSize":I
    div-int/lit8 v1, p2, 0x8

    div-int/2addr v1, v0

    .line 274
    .local v1, "m":I
    array-length v2, p1

    new-array v2, v2, [B

    .line 275
    .local v2, "data":[B
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    div-int/lit8 v3, p2, 0x8

    new-array v3, v3, [B

    .line 279
    .local v3, "W":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 280
    .local v5, "dig":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-gt v6, v1, :cond_1

    .line 282
    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->doHash([B[B)V

    .line 284
    array-length v7, v3

    array-length v8, v5

    mul-int v8, v8, v6

    sub-int/2addr v7, v8

    array-length v8, v5

    if-le v7, v8, :cond_0

    .line 285
    array-length v7, v5

    goto :goto_1

    .line 286
    :cond_0
    array-length v7, v3

    array-length v8, v5

    mul-int v8, v8, v6

    sub-int/2addr v7, v8

    :goto_1
    nop

    .line 287
    .local v7, "bytesToCopy":I
    array-length v8, v5

    mul-int v8, v8, v6

    invoke-static {v5, v4, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    sget-object v8, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    invoke-direct {p0, v2, v8}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 280
    .end local v7    # "bytesToCopy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 292
    .end local v6    # "i":I
    :cond_1
    return-object v3
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 16
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

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    .line 126
    .local v2, "numberOfBits":I
    const/high16 v4, 0x40000

    if-gt v2, v4, :cond_3

    .line 131
    iget-wide v4, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 133
    const/4 v3, -0x1

    return v3

    .line 136
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->reseed([B)V

    .line 139
    const/4 v4, 0x0

    .end local p2    # "additionalInput":[B
    .local v4, "additionalInput":[B
    goto :goto_0

    .line 136
    .end local v4    # "additionalInput":[B
    .restart local p2    # "additionalInput":[B
    :cond_1
    move-object/from16 v4, p2

    .line 143
    .end local p2    # "additionalInput":[B
    .restart local v4    # "additionalInput":[B
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    .line 145
    iget-object v8, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v8, v8

    add-int/2addr v8, v6

    array-length v9, v4

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 146
    .local v8, "newInput":[B
    aput-byte v5, v8, v7

    .line 147
    iget-object v9, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v10, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v10, v10

    invoke-static {v9, v7, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v9, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v9, v9

    add-int/2addr v9, v6

    array-length v10, v4

    invoke-static {v4, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v9

    .line 152
    .local v9, "w":[B
    iget-object v10, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {v0, v10, v9}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 156
    .end local v8    # "newInput":[B
    .end local v9    # "w":[B
    :cond_2
    iget-object v8, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {v0, v8, v2}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->hashgen([BI)[B

    move-result-object v8

    .line 159
    .local v8, "rv":[B
    iget-object v9, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v9, v9

    add-int/2addr v9, v6

    new-array v9, v9, [B

    .line 160
    .local v9, "subH":[B
    iget-object v10, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v11, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v11, v11

    invoke-static {v10, v7, v9, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/4 v10, 0x3

    aput-byte v10, v9, v7

    .line 163
    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v11

    .line 166
    .local v11, "H":[B
    iget-object v12, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {v0, v12, v11}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 167
    iget-object v12, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 168
    const/4 v12, 0x4

    new-array v12, v12, [B

    .line 169
    .local v12, "c":[B
    iget-wide v13, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v15, 0x18

    shr-long/2addr v13, v15

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, v12, v7

    .line 170
    iget-wide v13, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v15, 0x10

    shr-long/2addr v13, v15

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, v12, v6

    .line 171
    iget-wide v13, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    shr-long/2addr v13, v3

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v12, v5

    .line 172
    iget-wide v5, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v12, v10

    .line 174
    iget-object v3, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    .line 176
    iget-wide v5, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    iput-wide v5, v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    .line 178
    array-length v3, v1

    invoke-static {v8, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return v2

    .line 128
    .end local v4    # "additionalInput":[B
    .end local v8    # "rv":[B
    .end local v9    # "subH":[B
    .end local v11    # "H":[B
    .end local v12    # "c":[B
    .restart local p2    # "additionalInput":[B
    :cond_3
    move-object/from16 v4, p2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Number of bits per request limited to 262144"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBlockSize()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 8
    .param p1, "additionalInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalInput"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 235
    .local v0, "entropy":[B
    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-static {v1, v2, v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v1

    .line 236
    .local v1, "seedMaterial":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v2

    .line 238
    .local v2, "seed":[B
    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    .line 239
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 240
    .local v3, "subV":[B
    const/4 v5, 0x0

    aput-byte v5, v3, v5

    .line 241
    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-static {v6, v5, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v4, v3, v5}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    .line 244
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    .line 245
    return-void
.end method

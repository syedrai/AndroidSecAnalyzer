.class public Lorg/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private final defHash:[B

.field private final engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private final mgf1Hash:Lorg/bouncycastle/crypto/Digest;

.field private final mgf1NoMemoLimit:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 46
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "hash"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "hash",
            "mgf1Hash",
            "encodingParams"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 71
    iput-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    .line 72
    invoke-static {p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getMGF1NoMemoLimit(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1NoMemoLimit:I

    .line 73
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 75
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 77
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 79
    array-length v1, p4

    invoke-interface {p2, p4, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 82
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 0
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "hash",
            "encodingParams"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V

    .line 62
    return-void
.end method

.method private static getMGF1NoMemoLimit(Lorg/bouncycastle/crypto/Digest;)I
    .locals 1
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 27
    instance-of v0, p0, Lorg/bouncycastle/util/Memoable;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 32
    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method private maskGeneratorFunction1([BII[BII)V
    .locals 17
    .param p1, "z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "mask"    # [B
    .param p5, "maskOff"    # I
    .param p6, "maskLen"    # I
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
            "z",
            "zOff",
            "zLen",
            "mask",
            "maskOff",
            "maskLen"
        }
    .end annotation

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    .line 290
    .local v5, "digestSize":I
    new-array v6, v5, [B

    .line 291
    .local v6, "hash":[B
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 292
    .local v7, "C":[B
    const/4 v8, 0x0

    .line 294
    .local v8, "counter":I
    add-int v9, p5, p6

    .line 295
    .local v9, "maskEnd":I
    sub-int v10, v9, v5

    .line 296
    .local v10, "maskLimit":I
    move/from16 v11, p5

    .line 298
    .local v11, "maskPos":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 300
    iget v12, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1NoMemoLimit:I

    const/4 v13, 0x0

    if-le v3, v12, :cond_1

    .line 302
    iget-object v12, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    check-cast v12, Lorg/bouncycastle/util/Memoable;

    .line 303
    .local v12, "memoable":Lorg/bouncycastle/util/Memoable;
    invoke-interface {v12}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v14

    .line 305
    .local v14, "memo":Lorg/bouncycastle/util/Memoable;
    :goto_0
    if-ge v11, v10, :cond_0

    .line 307
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "counter":I
    .local v15, "counter":I
    invoke-static {v8, v7, v13}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 308
    iget-object v8, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    move/from16 v16, v9

    .end local v9    # "maskEnd":I
    .local v16, "maskEnd":I
    array-length v9, v7

    invoke-interface {v8, v7, v13, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 309
    iget-object v8, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v6, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 310
    invoke-interface {v12, v14}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 311
    invoke-static {v5, v6, v13, v4, v11}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 312
    add-int/2addr v11, v5

    move v8, v15

    move/from16 v9, v16

    goto :goto_0

    .line 305
    .end local v15    # "counter":I
    .end local v16    # "maskEnd":I
    .restart local v8    # "counter":I
    .restart local v9    # "maskEnd":I
    :cond_0
    move/from16 v16, v9

    .line 314
    .end local v9    # "maskEnd":I
    .end local v12    # "memoable":Lorg/bouncycastle/util/Memoable;
    .end local v14    # "memo":Lorg/bouncycastle/util/Memoable;
    .restart local v16    # "maskEnd":I
    goto :goto_2

    .line 300
    .end local v16    # "maskEnd":I
    .restart local v9    # "maskEnd":I
    :cond_1
    move/from16 v16, v9

    .line 317
    .end local v9    # "maskEnd":I
    .restart local v16    # "maskEnd":I
    :goto_1
    if-ge v11, v10, :cond_2

    .line 319
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "counter":I
    .local v9, "counter":I
    invoke-static {v8, v7, v13}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 320
    iget-object v8, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    array-length v12, v7

    invoke-interface {v8, v7, v13, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 321
    iget-object v8, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v6, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 322
    iget-object v8, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 323
    invoke-static {v5, v6, v13, v4, v11}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 324
    add-int/2addr v11, v5

    move v8, v9

    goto :goto_1

    .line 328
    .end local v9    # "counter":I
    .restart local v8    # "counter":I
    :cond_2
    :goto_2
    invoke-static {v8, v7, v13}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 329
    iget-object v9, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    array-length v12, v7

    invoke-interface {v9, v7, v13, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 330
    iget-object v9, v0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v6, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 331
    sub-int v9, v16, v11

    invoke-static {v9, v6, v13, v4, v11}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 332
    return-void
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getOutputBlockSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    .line 214
    .local v0, "wrongMask":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v3, v1, [B

    .line 216
    .local v3, "block":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 217
    .local v1, "data":[B
    array-length v2, v3

    array-length v4, v1

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x1f

    or-int/2addr v0, v2

    .line 219
    array-length v2, v3

    array-length v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 220
    .local v2, "copyLen":I
    array-length v4, v3

    sub-int/2addr v4, v2

    const/4 v9, 0x0

    invoke-static {v1, v9, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    invoke-static {v1, v9}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 224
    .end local v1    # "data":[B
    .end local v2    # "copyLen":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 229
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v1

    array-length v1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    sub-int v5, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v1

    const/4 v7, 0x0

    move-object v6, v3

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    .line 234
    iget-object v1, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v1

    iget-object v1, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v1

    array-length v1, v3

    iget-object v4, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    sub-int v8, v1, v4

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_0

    .line 242
    iget-object v4, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v4, v4, v1

    iget-object v5, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    add-int/2addr v5, v1

    aget-byte v5, v3, v5

    xor-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    .line 250
    .local v1, "start":I
    iget-object v4, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    .local v4, "index":I
    :goto_1
    array-length v5, v3

    if-eq v4, v5, :cond_1

    .line 252
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    .line 255
    .local v5, "octet":I
    neg-int v6, v5

    and-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0x1f

    .line 257
    .local v6, "shouldSetMask":I
    and-int v7, v4, v6

    add-int/2addr v1, v7

    .line 250
    .end local v5    # "octet":I
    .end local v6    # "shouldSetMask":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    .end local v4    # "index":I
    :cond_1
    shr-int/lit8 v4, v1, 0x1f

    or-int/2addr v0, v4

    .line 261
    add-int/lit8 v1, v1, 0x1

    .line 262
    aget-byte v4, v3, v1

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v0, v4

    .line 264
    if-nez v0, :cond_2

    .line 270
    add-int/lit8 v1, v1, 0x1

    .line 275
    array-length v4, v3

    sub-int/2addr v4, v1

    new-array v4, v4, [B

    .line 277
    .local v4, "output":[B
    array-length v5, v4

    invoke-static {v3, v1, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    invoke-static {v3, v9}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 280
    return-object v4

    .line 266
    .end local v4    # "output":[B
    :cond_2
    invoke-static {v3, v9}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 267
    new-instance v4, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "data wrong"

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encodeBlock([BII)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    .line 152
    .local v0, "inputBlockSize":I
    if-gt p3, v0, :cond_0

    .line 157
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v3, v1, [B

    .line 162
    .local v3, "block":[B
    array-length v1, v3

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    array-length v1, v3

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-byte v2, v3, v1

    .line 176
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    const/4 v9, 0x0

    invoke-static {v1, v9, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 182
    .local v1, "seed":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 183
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    invoke-static {v1, v9, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 190
    array-length v5, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v2

    array-length v2, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    sub-int v8, v2, v4

    const/4 v4, 0x0

    move-object v2, p0

    move-object v6, v3

    move-object v3, v1

    .end local v1    # "seed":[B
    .local v3, "seed":[B
    .local v6, "block":[B
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    .line 195
    move-object v3, v6

    .end local v6    # "block":[B
    .restart local v1    # "seed":[B
    .local v3, "block":[B
    iget-object v4, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v3

    iget-object v6, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v6

    const/4 v7, 0x0

    move-object v6, v3

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BII[BII)V

    .line 197
    iget-object v4, v2, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v3

    invoke-interface {v4, v3, v9, v5}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4

    .line 154
    .end local v1    # "seed":[B
    .end local v3    # "block":[B
    :cond_0
    move-object v2, p0

    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v3, "input data too long"

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInputBlockSize()I
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 109
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 111
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1

    .line 115
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 123
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 125
    return v0

    .line 129
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
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

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "initRandom":Ljava/security/SecureRandom;
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 95
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 96
    .local v1, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 99
    .end local v1    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 100
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 103
    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;
.source "NTRUEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 17
    .param p1, "seed"    # [B
    .param p2, "N"    # I
    .param p3, "minCallsR"    # I
    .param p4, "hashSeed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "N",
            "minCallsR",
            "hashSeed"
        }
    .end annotation

    .line 270
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 271
    .local v3, "hashAlg":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 272
    .local v4, "hashLen":I
    mul-int v5, v2, v4

    new-array v5, v5, [B

    .line 273
    .local v5, "buf":[B
    if-eqz p4, :cond_0

    move-object/from16 v6, p1

    invoke-direct {v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    move-object v7, v6

    .line 274
    .local v7, "Z":[B
    :goto_0
    const/4 v8, 0x0

    .line 275
    .local v8, "counter":I
    :goto_1
    const/4 v9, 0x0

    if-ge v8, v2, :cond_1

    .line 277
    array-length v10, v7

    invoke-interface {v3, v7, v9, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 278
    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    .line 280
    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v10

    .line 281
    .local v10, "hash":[B
    mul-int v11, v8, v4

    invoke-static {v10, v9, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    nop

    .end local v10    # "hash":[B
    add-int/lit8 v8, v8, 0x1

    .line 283
    goto :goto_1

    .line 285
    :cond_1
    new-instance v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 288
    .local v10, "i":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :goto_2
    const/4 v11, 0x0

    .line 289
    .local v11, "cur":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_3
    array-length v13, v5

    if-eq v12, v13, :cond_6

    .line 291
    aget-byte v13, v5, v12

    and-int/lit16 v13, v13, 0xff

    .line 292
    .local v13, "O":I
    const/16 v14, 0xf3

    if-lt v13, v14, :cond_2

    .line 294
    goto :goto_5

    .line 297
    :cond_2
    const/4 v14, 0x0

    .local v14, "terIdx":I
    :goto_4
    const/4 v15, 0x4

    if-ge v14, v15, :cond_4

    .line 299
    rem-int/lit8 v15, v13, 0x3

    .line 300
    .local v15, "rem3":I
    iget-object v9, v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v16, v15, -0x1

    aput v16, v9, v11

    .line 301
    add-int/lit8 v11, v11, 0x1

    .line 302
    if-ne v11, v1, :cond_3

    .line 304
    return-object v10

    .line 306
    :cond_3
    sub-int v9, v13, v15

    div-int/lit8 v13, v9, 0x3

    .line 297
    .end local v15    # "rem3":I
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_4

    .line 309
    .end local v14    # "terIdx":I
    :cond_4
    iget-object v9, v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v14, v13, -0x1

    aput v14, v9, v11

    .line 310
    add-int/lit8 v11, v11, 0x1

    .line 311
    if-ne v11, v1, :cond_5

    .line 313
    return-object v10

    .line 289
    .end local v13    # "O":I
    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 317
    .end local v12    # "index":I
    :cond_6
    if-lt v11, v1, :cond_7

    .line 319
    return-object v10

    .line 322
    :cond_7
    array-length v9, v7

    const/4 v12, 0x0

    invoke-interface {v3, v7, v12, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 323
    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    .line 325
    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v9

    .line 327
    .local v9, "hash":[B
    move-object v5, v9

    .line 329
    nop

    .end local v9    # "hash":[B
    .end local v11    # "cur":I
    add-int/lit8 v8, v8, 0x1

    .line 330
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 4
    .param p1, "oid"    # [B
    .param p2, "m"    # [B
    .param p3, "l"    # I
    .param p4, "b"    # [B
    .param p5, "hTrunc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "m",
            "l",
            "b",
            "hTrunc"
        }
    .end annotation

    .line 179
    array-length v0, p1

    add-int/2addr v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    array-length v1, p5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 181
    .local v0, "sData":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v1, p1

    array-length v3, p2

    add-int/2addr v1, v3

    array-length v3, p4

    invoke-static {p4, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    array-length v1, p1

    array-length v3, p2

    add-int/2addr v1, v3

    array-length v3, p4

    add-int/2addr v1, v3

    array-length v3, p5

    invoke-static {p5, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 2
    .param p1, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashAlg"
        }
    .end annotation

    .line 343
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 345
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 347
    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B
    .locals 3
    .param p1, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashAlg",
            "input"
        }
    .end annotation

    .line 352
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 354
    .local v0, "tmp":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 355
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 357
    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "len"
        }
    .end annotation

    .line 480
    new-array v0, p2, [B

    .line 482
    .local v0, "tmp":[B
    array-length v1, p1

    if-ge p2, v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    return-object v0
.end method

.method private decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 32
    .param p1, "data"    # [B
    .param p2, "privKey"    # Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "privKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    .line 372
    .local v7, "priv_t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    iget-object v8, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 373
    .local v8, "priv_fp":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    iget-object v9, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 374
    .local v9, "pub":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 375
    .local v10, "N":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 376
    .local v11, "q":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 377
    .local v12, "db":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 378
    .local v13, "maxMsgLenBytes":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 379
    .local v14, "dm0":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 380
    .local v15, "pkLen":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 381
    .local v1, "minCallsMask":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 382
    .local v2, "hashSeed":Z
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 384
    .local v3, "oid":[B
    const/16 v4, 0xff

    if-gt v13, v4, :cond_6

    .line 389
    div-int/lit8 v5, v12, 0x8

    .line 391
    .local v5, "bLen":I
    move-object/from16 v4, p1

    invoke-static {v4, v10, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    .line 392
    .local v6, "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move/from16 v17, v12

    .end local v12    # "db":I
    .local v17, "db":I
    invoke-virtual {v0, v6, v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 394
    .local v12, "ci":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v18, v3

    .end local v3    # "oid":[B
    .local v18, "oid":[B
    const/4 v3, -0x1

    invoke-virtual {v12, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v3

    if-lt v3, v14, :cond_5

    .line 398
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    if-lt v4, v14, :cond_4

    .line 402
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    if-lt v4, v14, :cond_3

    .line 407
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 408
    .local v4, "cR":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v4, v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 409
    invoke-virtual {v4, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 410
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 411
    .local v3, "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v19, v4

    .end local v4    # "cR":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v19, "cR":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 412
    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v4

    .line 413
    .local v4, "coR4":[B
    move-object/from16 v21, v6

    .end local v6    # "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v21, "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {v0, v4, v10, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    .line 414
    .local v6, "mask":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v22, v12

    .line 415
    .local v22, "cMTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v23, v7

    move-object/from16 v7, v22

    .end local v22    # "cMTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v7, "cMTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v23, "priv_t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 416
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 417
    move-object/from16 v22, v6

    .end local v6    # "mask":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v22, "mask":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v6

    .line 419
    .local v6, "cM":[B
    move-object/from16 v24, v4

    .end local v4    # "coR4":[B
    .local v24, "coR4":[B
    new-array v4, v5, [B

    .line 420
    .local v4, "cb":[B
    move/from16 v25, v1

    const/4 v1, 0x0

    .end local v1    # "minCallsMask":I
    .local v25, "minCallsMask":I
    invoke-static {v6, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    aget-byte v1, v6, v5

    move/from16 v26, v2

    const/16 v2, 0xff

    .end local v2    # "hashSeed":Z
    .local v26, "hashSeed":Z
    and-int/2addr v1, v2

    .line 422
    .local v1, "cl":I
    if-gt v1, v13, :cond_2

    .line 426
    new-array v2, v1, [B

    .line 427
    .local v2, "cm":[B
    move-object/from16 v16, v3

    .end local v3    # "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v16, "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v27, v4

    const/4 v4, 0x0

    .end local v4    # "cb":[B
    .local v27, "cb":[B
    invoke-static {v6, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    array-length v3, v6

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 429
    .local v3, "p0":[B
    add-int/lit8 v4, v5, 0x1

    add-int/2addr v4, v1

    move/from16 v28, v1

    .end local v1    # "cl":I
    .local v28, "cl":I
    array-length v1, v3

    move-object/from16 v29, v2

    const/4 v2, 0x0

    .end local v2    # "cm":[B
    .local v29, "cm":[B
    invoke-static {v6, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    array-length v1, v3

    new-array v1, v1, [B

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {v9, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v1

    .line 437
    .local v1, "bh":[B
    div-int/lit8 v2, v15, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v2

    .line 438
    .local v2, "hTrunc":[B
    move-object/from16 v20, v3

    move-object/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v27, v1

    move-object/from16 v28, v7

    move-object/from16 v1, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v16

    move/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v29

    .end local v7    # "cMTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v29    # "cm":[B
    .local v1, "oid":[B
    .local v2, "cm":[B
    .local v3, "cl":I
    .restart local v4    # "cb":[B
    .local v5, "hTrunc":[B
    .local v6, "cR":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v16, "bLen":I
    .local v18, "cM":[B
    .local v19, "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v20, "p0":[B
    .local v27, "bh":[B
    .local v28, "cMTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v7

    .line 440
    .local v7, "sData":[B
    move-object/from16 v29, v1

    .end local v1    # "oid":[B
    .local v29, "oid":[B
    invoke-direct {v0, v7, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    move-result-object v1

    .line 441
    .local v1, "cr":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    invoke-interface {v1, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 442
    .local v0, "cRPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 443
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 448
    return-object v2

    .line 445
    :cond_0
    move-object/from16 v30, v0

    .end local v0    # "cRPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v30, "cRPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    move-object/from16 v31, v1

    .end local v1    # "cr":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v31, "cr":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    const-string v1, "Invalid message encoding"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    .end local v2    # "cm":[B
    .end local v4    # "cb":[B
    .end local v20    # "p0":[B
    .end local v30    # "cRPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v31    # "cr":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v3, "p0":[B
    .local v5, "bLen":I
    .local v6, "cM":[B
    .local v7, "cMTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v16, "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v18, "oid":[B
    .local v19, "cR":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v27, "cb":[B
    .local v28, "cl":I
    .local v29, "cm":[B
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "The message is not followed by zeroes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    .end local v16    # "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v27    # "cb":[B
    .end local v28    # "cl":I
    .end local v29    # "cm":[B
    .local v1, "cl":I
    .local v3, "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .restart local v4    # "cb":[B
    :cond_2
    move-object/from16 v29, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v3

    move v3, v1

    .end local v1    # "cl":I
    .local v3, "cl":I
    .local v6, "cR":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v18, "cM":[B
    .local v19, "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v29, "oid":[B
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    .end local v3    # "cl":I
    .end local v4    # "cb":[B
    .end local v19    # "cR4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v21    # "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v22    # "mask":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v23    # "priv_t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .end local v24    # "coR4":[B
    .end local v25    # "minCallsMask":I
    .end local v26    # "hashSeed":Z
    .end local v29    # "oid":[B
    .local v1, "minCallsMask":I
    .local v2, "hashSeed":Z
    .local v6, "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v7, "priv_t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v18, "oid":[B
    :cond_3
    move/from16 v25, v1

    .end local v1    # "minCallsMask":I
    .restart local v25    # "minCallsMask":I
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    .end local v25    # "minCallsMask":I
    .restart local v1    # "minCallsMask":I
    :cond_4
    move/from16 v25, v1

    .end local v1    # "minCallsMask":I
    .restart local v25    # "minCallsMask":I
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    .end local v25    # "minCallsMask":I
    .restart local v1    # "minCallsMask":I
    :cond_5
    move/from16 v25, v1

    .end local v1    # "minCallsMask":I
    .restart local v25    # "minCallsMask":I
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal -1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    .end local v5    # "bLen":I
    .end local v6    # "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v17    # "db":I
    .end local v18    # "oid":[B
    .end local v25    # "minCallsMask":I
    .restart local v1    # "minCallsMask":I
    .local v3, "oid":[B
    .local v12, "db":I
    :cond_6
    move/from16 v25, v1

    .end local v1    # "minCallsMask":I
    .restart local v25    # "minCallsMask":I
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 26
    .param p1, "m"    # [B
    .param p2, "pubKey"    # Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "pubKey"
        }
    .end annotation

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 107
    .local v7, "pub":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 108
    .local v8, "N":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 110
    .local v9, "q":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 111
    .local v10, "maxLenBytes":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 112
    .local v11, "db":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    .line 113
    .local v12, "bufferLenBits":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 114
    .local v13, "dm0":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 115
    .local v14, "pkLen":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 116
    .local v15, "minCallsMask":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 117
    .local v1, "hashSeed":Z
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 119
    .local v3, "oid":[B
    move v4, v1

    move-object v1, v3

    .end local v3    # "oid":[B
    .local v1, "oid":[B
    .local v4, "hashSeed":Z
    array-length v3, v2

    .line 120
    .local v3, "l":I
    const/16 v5, 0xff

    if-gt v10, v5, :cond_4

    .line 124
    if-gt v3, v10, :cond_3

    .line 132
    :goto_0
    div-int/lit8 v5, v11, 0x8

    new-array v5, v5, [B

    .line 133
    .local v5, "b":[B
    move-object/from16 v16, v1

    .end local v1    # "oid":[B
    .local v16, "oid":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    add-int/lit8 v1, v10, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    .line 135
    .local v1, "p0":[B
    move/from16 v17, v4

    .end local v4    # "hashSeed":Z
    .local v17, "hashSeed":Z
    div-int/lit8 v4, v12, 0x8

    new-array v4, v4, [B

    .line 137
    .local v4, "M":[B
    array-length v6, v5

    move/from16 v18, v11

    .end local v11    # "db":I
    .local v18, "db":I
    const/4 v11, 0x0

    invoke-static {v5, v11, v4, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    array-length v6, v5

    int-to-byte v11, v3

    aput-byte v11, v4, v6

    .line 139
    array-length v6, v5

    const/4 v11, 0x1

    add-int/2addr v6, v11

    const/16 v19, 0x1

    array-length v11, v2

    move/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "l":I
    .local v20, "l":I
    invoke-static {v2, v3, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    array-length v11, v2

    add-int/2addr v6, v11

    array-length v11, v1

    invoke-static {v1, v3, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-static {v4, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    .line 145
    .local v6, "mTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v7, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v11

    .line 146
    .local v11, "bh":[B
    div-int/lit8 v3, v14, 0x8

    invoke-direct {v0, v11, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v3

    .line 147
    .local v3, "hTrunc":[B
    move-object/from16 v21, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v17, v12

    move-object v12, v4

    move-object v4, v5

    move-object v5, v3

    move/from16 v3, v20

    move/from16 v20, v14

    .end local v14    # "pkLen":I
    .local v1, "oid":[B
    .local v3, "l":I
    .local v4, "b":[B
    .local v5, "hTrunc":[B
    .local v11, "hashSeed":Z
    .local v12, "M":[B
    .local v16, "p0":[B
    .local v17, "bufferLenBits":I
    .local v20, "pkLen":I
    .local v21, "bh":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v14

    .line 149
    .local v14, "sData":[B
    invoke-direct {v0, v14, v12}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    move-result-object v2

    .line 150
    .local v2, "r":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    move-object/from16 v22, v1

    .end local v1    # "oid":[B
    .local v22, "oid":[B
    invoke-interface {v2, v7, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 151
    .local v1, "R":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v2

    .end local v2    # "r":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v24, "r":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    move-object/from16 v2, v23

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 152
    .local v2, "R4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v23, v4

    .end local v4    # "b":[B
    .local v23, "b":[B
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 153
    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v4

    .line 154
    .local v4, "oR4":[B
    move-object/from16 v25, v2

    .end local v2    # "R4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v25, "R4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {v0, v4, v8, v15, v11}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 155
    .local v2, "mask":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 156
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 158
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-ge v0, v13, :cond_0

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move v4, v11

    move/from16 v12, v17

    move/from16 v11, v18

    move/from16 v14, v20

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-ge v0, v13, :cond_1

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move v4, v11

    move/from16 v12, v17

    move/from16 v11, v18

    move/from16 v14, v20

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-ge v0, v13, :cond_2

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move v4, v11

    move/from16 v12, v17

    move/from16 v11, v18

    move/from16 v14, v20

    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 171
    :cond_2
    invoke-virtual {v1, v6, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 172
    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 173
    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0

    .line 126
    .end local v2    # "mask":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v5    # "hTrunc":[B
    .end local v6    # "mTrin":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v16    # "p0":[B
    .end local v17    # "bufferLenBits":I
    .end local v18    # "db":I
    .end local v20    # "pkLen":I
    .end local v21    # "bh":[B
    .end local v22    # "oid":[B
    .end local v23    # "b":[B
    .end local v24    # "r":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .end local v25    # "R4":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "oid":[B
    .local v4, "hashSeed":Z
    .local v11, "db":I
    .local v12, "bufferLenBits":I
    .local v14, "pkLen":I
    :cond_3
    move-object/from16 v22, v1

    .end local v1    # "oid":[B
    .restart local v22    # "oid":[B
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .end local v22    # "oid":[B
    .restart local v1    # "oid":[B
    :cond_4
    move-object/from16 v22, v1

    .end local v1    # "oid":[B
    .restart local v22    # "oid":[B
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "llen values bigger than 1 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I
    .locals 6
    .param p1, "ig"    # Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
    .param p2, "dr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ig",
            "dr"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 242
    .local v0, "N":I
    new-array v1, v0, [I

    .line 243
    .local v1, "r":[I
    const/4 v2, -0x1

    .local v2, "coeff":I
    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, "t":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 248
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v4

    .line 249
    .local v4, "i":I
    aget v5, v1, v4

    if-nez v5, :cond_0

    .line 251
    aput v2, v1, v4

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 254
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 243
    .end local v3    # "t":I
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 257
    .end local v2    # "coeff":I
    :cond_2
    return-object v1
.end method

.method private generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .locals 5
    .param p1, "seed"    # [B
    .param p2, "M"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "M"
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;-><init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    .line 207
    .local v0, "ig":Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 209
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 210
    .local v1, "r1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 211
    .local v2, "r2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 212
    .local v3, "r3":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v4, v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object v4

    .line 216
    .end local v1    # "r1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .end local v2    # "r2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .end local v3    # "r3":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    .line 217
    .local v1, "dr":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    .line 218
    .local v2, "sparse":Z
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v3

    .line 219
    .local v3, "r":[I
    if-eqz v2, :cond_1

    .line 221
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v4, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object v4

    .line 225
    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v4, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object v4
.end method

.method private log2(I)I
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 489
    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    .line 491
    const/16 v0, 0xb

    return v0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log2 not fully implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "counter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashAlg",
            "counter"
        }
    .end annotation

    .line 335
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 336
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 337
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 338
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 339
    return-void
.end method


# virtual methods
.method protected decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 3
    .param p1, "e"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "priv_t"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .param p3, "priv_fp"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "priv_t",
            "priv_fp"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 463
    .local v0, "a":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 464
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_0

    .line 468
    .end local v0    # "a":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 470
    .restart local v0    # "a":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 471
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 473
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v2, p3, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 474
    .local v2, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :goto_1
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 475
    return-object v2
.end method

.method protected encrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p1, "m"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "r"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;
    .param p3, "pubKey"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "r",
            "pubKey"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 191
    .local v0, "e":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 192
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 193
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->log2(I)I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "parameters"
        }
    .end annotation

    .line 43
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 48
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 49
    .local v1, "withRandom":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 50
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 53
    .end local v1    # "withRandom":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 55
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 56
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .line 57
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    .line 58
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 62
    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 63
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .line 64
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    .line 65
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 67
    :goto_0
    return-void
.end method

.method public processBlock([BII)[B
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 82
    new-array v0, p3, [B

    .line 84
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object v1

    return-object v1
.end method

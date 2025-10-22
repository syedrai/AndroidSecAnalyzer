.class public Lorg/bouncycastle/crypto/engines/EthereumIESEngine;
.super Ljava/lang/Object;
.source "EthereumIESEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;
    }
.end annotation


# instance fields
.field private IV:[B

.field V:[B

.field agree:Lorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field commonMac:[B

.field forEncryption:Z

.field kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private keyParser:Lorg/bouncycastle/crypto/KeyParser;

.field mac:Lorg/bouncycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/bouncycastle/crypto/params/IESParameters;

.field privParam:Lorg/bouncycastle/crypto/CipherParameters;

.field pubParam:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;[B)V
    .locals 1
    .param p1, "agree"    # Lorg/bouncycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .param p4, "commonMac"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "agree",
            "kdf",
            "mac",
            "commonMac"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 71
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 72
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 73
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->macBuf:[B

    .line 74
    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;[BLorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "agree"    # Lorg/bouncycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .param p4, "commonMac"    # [B
    .param p5, "cipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "agree",
            "kdf",
            "mac",
            "commonMac",
            "cipher"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 91
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 92
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 93
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->macBuf:[B

    .line 94
    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    .line 95
    iput-object p5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 96
    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 18
    .param p1, "in_enc"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in_enc",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 290
    move-object/from16 v0, p0

    move/from16 v7, p3

    const/4 v8, 0x0

    .line 293
    .local v8, "len":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v1, v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v7, v1, :cond_9

    .line 299
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 302
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v1, v1

    sub-int v1, v7, v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 303
    .local v1, "K1":[B
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 304
    .local v2, "K2":[B
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 306
    .local v3, "K":[B
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v5, v3

    invoke-interface {v4, v3, v9, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 308
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 310
    array-length v4, v2

    invoke-static {v3, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    array-length v4, v2

    array-length v5, v1

    invoke-static {v3, v4, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 315
    :cond_0
    array-length v4, v1

    invoke-static {v3, v9, v1, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    array-length v4, v1

    array-length v5, v2

    invoke-static {v3, v4, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    :goto_0
    array-length v4, v1

    new-array v4, v4, [B

    .line 322
    .local v4, "M":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-eq v5, v6, :cond_1

    .line 324
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v6, v6

    add-int v6, p2, v6

    add-int/2addr v6, v5

    aget-byte v6, p1, v6

    aget-byte v10, v1, v5

    xor-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 322
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v11, v2

    move-object/from16 v2, p1

    .end local v5    # "i":I
    goto/16 :goto_3

    .line 330
    .end local v1    # "K1":[B
    .end local v2    # "K2":[B
    .end local v3    # "K":[B
    .end local v4    # "M":[B
    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v1, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v10, v1, [B

    .line 331
    .local v10, "K1":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v11, v1, [B

    .line 332
    .local v11, "K2":[B
    array-length v1, v10

    array-length v2, v11

    add-int/2addr v1, v2

    new-array v12, v1, [B

    .line 334
    .local v12, "K":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v2, v12

    invoke-interface {v1, v12, v9, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 335
    array-length v1, v10

    invoke-static {v12, v9, v10, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    array-length v1, v10

    array-length v2, v11

    invoke-static {v12, v1, v11, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v10}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 341
    .local v1, "cp":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    if-eqz v2, :cond_3

    .line 343
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v1, v2

    move-object v13, v1

    goto :goto_2

    .line 341
    :cond_3
    move-object v13, v1

    .line 346
    .end local v1    # "cp":Lorg/bouncycastle/crypto/CipherParameters;
    .local v13, "cp":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v9, v13}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 348
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v2, v2

    sub-int v2, v7, v2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v5, v1, [B

    .line 351
    .local v5, "M":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v2, v2

    add-int v3, p2, v2

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v2, v2

    sub-int v2, v7, v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    sub-int v4, v2, v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v8

    move-object v4, v5

    move-object v1, v10

    move-object v3, v12

    .line 355
    .end local v5    # "M":[B
    .end local v10    # "K1":[B
    .end local v12    # "K":[B
    .end local v13    # "cp":Lorg/bouncycastle/crypto/CipherParameters;
    .local v1, "K1":[B
    .restart local v3    # "K":[B
    .restart local v4    # "M":[B
    :goto_3
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v5

    .line 356
    .local v5, "P2":[B
    const/4 v6, 0x0

    .line 357
    .local v6, "L2":[B
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v10, v10

    if-eqz v10, :cond_4

    .line 359
    invoke-virtual {v0, v5}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->getLengthTag([B)[B

    move-result-object v6

    .line 363
    :cond_4
    add-int v10, p2, v7

    .line 364
    .local v10, "end":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v12

    sub-int v12, v10, v12

    invoke-static {v2, v12, v10}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 366
    .local v12, "T1":[B
    array-length v13, v12

    new-array v13, v13, [B

    .line 370
    .local v13, "T2":[B
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v14

    .line 371
    .local v14, "hash":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v14}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v15

    new-array v15, v15, [B

    .line 372
    .local v15, "K2hash":[B
    invoke-interface {v14}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 373
    move-object/from16 v16, v1

    .end local v1    # "K1":[B
    .local v16, "K1":[B
    array-length v1, v11

    invoke-interface {v14, v11, v9, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 374
    invoke-interface {v14, v15, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 375
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v15}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v9}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 377
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    move-object/from16 v17, v3

    .end local v3    # "K":[B
    .local v17, "K":[B
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    array-length v3, v3

    const/4 v7, 0x0

    invoke-interface {v1, v9, v7, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 380
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v3, v3

    add-int v3, p2, v3

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v7, v7

    sub-int v7, p3, v7

    array-length v9, v13

    sub-int/2addr v7, v9

    invoke-interface {v1, v2, v3, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 382
    if-eqz v5, :cond_5

    .line 384
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v3, v5

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_4

    .line 382
    :cond_5
    const/4 v7, 0x0

    .line 386
    :goto_4
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_6

    .line 388
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v3, v6

    invoke-interface {v1, v6, v7, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 391
    :cond_6
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    array-length v9, v9

    invoke-interface {v1, v3, v7, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 392
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v13, v7}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 394
    invoke-static {v12, v13}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 399
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v1, :cond_7

    .line 401
    return-object v4

    .line 405
    :cond_7
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v4, v8}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v8, v1

    .line 407
    const/4 v7, 0x0

    invoke-static {v4, v7, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 396
    :cond_8
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "invalid MAC"

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    .end local v4    # "M":[B
    .end local v5    # "P2":[B
    .end local v6    # "L2":[B
    .end local v10    # "end":I
    .end local v11    # "K2":[B
    .end local v12    # "T1":[B
    .end local v13    # "T2":[B
    .end local v14    # "hash":Lorg/bouncycastle/crypto/Digest;
    .end local v15    # "K2hash":[B
    .end local v16    # "K1":[B
    .end local v17    # "K":[B
    :cond_9
    move-object/from16 v2, p1

    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "length of input must be greater than the MAC and V combined"

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private encryptBlock([BII)[B
    .locals 14
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

    .line 182
    move/from16 v3, p3

    const/4 v0, 0x0

    .local v0, "C":[B
    const/4 v1, 0x0

    .local v1, "K":[B
    const/4 v2, 0x0

    .local v2, "K1":[B
    const/4 v4, 0x0

    .line 185
    .local v4, "K2":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 188
    new-array v2, v3, [B

    .line 189
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    .line 190
    array-length v5, v2

    array-length v7, v4

    add-int/2addr v5, v7

    new-array v1, v5, [B

    .line 192
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v7, v1

    invoke-interface {v5, v1, v6, v7}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 194
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 196
    array-length v5, v4

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v5, v4

    array-length v7, v2

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 201
    :cond_0
    array-length v5, v2

    invoke-static {v1, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    array-length v5, v4

    invoke-static {v1, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :goto_0
    new-array v0, v3, [B

    .line 207
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-eq v5, v3, :cond_1

    .line 209
    add-int v7, p2, v5

    aget-byte v7, p1, v7

    aget-byte v8, v2, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 207
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 211
    .end local v5    # "i":I
    :cond_1
    move/from16 v5, p3

    .local v5, "len":I
    goto :goto_3

    .line 216
    .end local v5    # "len":I
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v5, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    new-array v7, v5, [B

    .line 217
    .end local v2    # "K1":[B
    .local v7, "K1":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v8, v2, [B

    .line 218
    .end local v4    # "K2":[B
    .local v8, "K2":[B
    array-length v2, v7

    array-length v4, v8

    add-int/2addr v2, v4

    new-array v9, v2, [B

    .line 220
    .end local v1    # "K":[B
    .local v9, "K":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v2, v9

    invoke-interface {v1, v9, v6, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 221
    array-length v1, v7

    invoke-static {v9, v6, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    array-length v1, v7

    array-length v2, v8

    invoke-static {v9, v1, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v7}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    invoke-direct {v4, v5, v10}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 231
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v7}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 234
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 235
    .end local v0    # "C":[B
    .local v4, "C":[B
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 236
    .local v0, "len":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int v5, v0, v1

    move-object v0, v4

    move-object v2, v7

    move-object v4, v8

    move-object v1, v9

    .line 241
    .end local v7    # "K1":[B
    .end local v8    # "K2":[B
    .end local v9    # "K":[B
    .local v0, "C":[B
    .restart local v1    # "K":[B
    .restart local v2    # "K1":[B
    .local v4, "K2":[B
    .restart local v5    # "len":I
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v3

    .line 242
    .local v3, "P2":[B
    const/4 v7, 0x0

    .line 243
    .local v7, "L2":[B
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v8, v8

    if-eqz v8, :cond_4

    .line 245
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->getLengthTag([B)[B

    move-result-object v7

    .line 250
    :cond_4
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v8

    new-array v8, v8, [B

    .line 254
    .local v8, "T":[B
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v9

    .line 255
    .local v9, "hash":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v10, v10, [B

    .line 256
    .local v10, "K2hash":[B
    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 257
    array-length v11, v4

    invoke-interface {v9, v4, v6, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 258
    invoke-interface {v9, v10, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 260
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v12, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v12, v10}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v11, v12}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 262
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    array-length v13, v13

    invoke-interface {v11, v12, v6, v13}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 264
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v12, v0

    invoke-interface {v11, v0, v6, v12}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 265
    if-eqz v3, :cond_5

    .line 267
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v12, v3

    invoke-interface {v11, v3, v6, v12}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 269
    :cond_5
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v11, v11

    if-eqz v11, :cond_6

    .line 271
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v12, v7

    invoke-interface {v11, v7, v6, v12}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 274
    :cond_6
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->commonMac:[B

    array-length v13, v13

    invoke-interface {v11, v12, v6, v13}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 275
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v11, v8, v6}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 279
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v11, v11

    add-int/2addr v11, v5

    array-length v12, v8

    add-int/2addr v11, v12

    new-array v11, v11, [B

    .line 280
    .local v11, "Output":[B
    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v13, v13

    invoke-static {v12, v6, v11, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v12, v12

    invoke-static {v0, v6, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v12, v12

    add-int/2addr v12, v5

    array-length v13, v8

    invoke-static {v8, v6, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v11
.end method

.method private extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 157
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    .line 160
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->IV:[B

    .line 165
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    .line 167
    :goto_0
    return-void
.end method


# virtual methods
.method public getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method protected getLengthTag([B)[B
    .locals 5
    .param p1, "p2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p2"
        }
    .end annotation

    .line 479
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 480
    .local v0, "L2":[B
    if-eqz p1, :cond_0

    .line 482
    array-length v1, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    mul-long v1, v1, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 484
    :cond_0
    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/KeyParser;)V
    .locals 1
    .param p1, "privateKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p3, "publicKeyParser"    # Lorg/bouncycastle/crypto/KeyParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "params",
            "publicKeyParser"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    .line 149
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 150
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    .line 152
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 153
    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1
    .param p1, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p3, "ephemeralKeyPairGenerator"    # Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "params",
            "ephemeralKeyPairGenerator"
        }
    .end annotation

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    .line 133
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 134
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 136
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 137
    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "privParam"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p3, "pubParam"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p4, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "privParam",
            "pubParam",
            "params"
        }
    .end annotation

    .line 112
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    .line 113
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 114
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 115
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    .line 117
    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 118
    return-void
.end method

.method public processBlock([BII)[B
    .locals 6
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

    .line 415
    const-string/jumbo v0, "unable to recover ephemeral public key: "

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 417
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v0

    .line 421
    .local v0, "ephKeyPair":Lorg/bouncycastle/crypto/EphemeralKeyPair;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 422
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    .line 423
    .end local v0    # "ephKeyPair":Lorg/bouncycastle/crypto/EphemeralKeyPair;
    goto :goto_0

    .line 427
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    if-eqz v1, :cond_1

    .line 429
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 433
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    nop

    .line 444
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p3, v0

    .line 445
    .local v0, "encLength":I
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    goto :goto_0

    .line 439
    .end local v0    # "encLength":I
    :catch_0
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 435
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 437
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 450
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 451
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 452
    .local v0, "z":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    .line 455
    .local v1, "Z":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    array-length v2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->V:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    .line 458
    .local v2, "VZ":[B
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 459
    move-object v1, v2

    .line 465
    .end local v2    # "VZ":[B
    :cond_2
    :try_start_1
    new-instance v2, Lorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 466
    .local v2, "kdfParam":Lorg/bouncycastle/crypto/params/KDFParameters;
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v4, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 468
    iget-boolean v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->forEncryption:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->encryptBlock([BII)[B

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/EthereumIESEngine;->decryptBlock([BII)[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :goto_1
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 468
    return-object v4

    .line 472
    .end local v2    # "kdfParam":Lorg/bouncycastle/crypto/params/KDFParameters;
    :catchall_0
    move-exception v2

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 473
    throw v2
.end method

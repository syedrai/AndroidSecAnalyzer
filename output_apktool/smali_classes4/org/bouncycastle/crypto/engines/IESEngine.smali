.class public Lorg/bouncycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field private IV:[B

.field V:[B

.field agree:Lorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

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
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V
    .locals 1
    .param p1, "agree"    # Lorg/bouncycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "agree",
            "kdf",
            "mac"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 62
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 63
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 64
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "agree"    # Lorg/bouncycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/bouncycastle/crypto/Mac;
    .param p4, "cipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
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
            "cipher"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 85
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 86
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 87
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 88
    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 89
    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 17
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

    .line 273
    move-object/from16 v0, p0

    move/from16 v7, p3

    const/4 v8, 0x0

    .line 276
    .local v8, "len":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v7, v1, :cond_9

    .line 282
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 285
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    sub-int v1, v7, v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 286
    .local v1, "K1":[B
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 287
    .local v2, "K2":[B
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 289
    .local v3, "K":[B
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v5, v3

    invoke-interface {v4, v3, v9, v5}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 291
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 293
    array-length v4, v2

    invoke-static {v3, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v4, v2

    array-length v5, v1

    invoke-static {v3, v4, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 298
    :cond_0
    array-length v4, v1

    invoke-static {v3, v9, v1, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v4, v1

    array-length v5, v2

    invoke-static {v3, v4, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :goto_0
    array-length v4, v1

    new-array v4, v4, [B

    .line 305
    .local v4, "M":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-eq v5, v6, :cond_1

    .line 307
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v6, v6

    add-int v6, p2, v6

    add-int/2addr v6, v5

    aget-byte v6, p1, v6

    aget-byte v10, v1, v5

    xor-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 305
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v11, v2

    move-object/from16 v2, p1

    .end local v5    # "i":I
    goto/16 :goto_3

    .line 313
    .end local v1    # "K1":[B
    .end local v2    # "K2":[B
    .end local v3    # "K":[B
    .end local v4    # "M":[B
    :cond_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v1, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v10, v1, [B

    .line 314
    .local v10, "K1":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v11, v1, [B

    .line 315
    .local v11, "K2":[B
    array-length v1, v10

    array-length v2, v11

    add-int/2addr v1, v2

    new-array v12, v1, [B

    .line 317
    .local v12, "K":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v2, v12

    invoke-interface {v1, v12, v9, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 318
    array-length v1, v10

    invoke-static {v12, v9, v10, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    array-length v1, v10

    array-length v2, v11

    invoke-static {v12, v1, v11, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v10}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 324
    .local v1, "cp":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    if-eqz v2, :cond_3

    .line 326
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v1, v2

    move-object v13, v1

    goto :goto_2

    .line 324
    :cond_3
    move-object v13, v1

    .line 329
    .end local v1    # "cp":Lorg/bouncycastle/crypto/CipherParameters;
    .local v13, "cp":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v9, v13}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 331
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    sub-int v2, v7, v2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v5, v1, [B

    .line 334
    .local v5, "M":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    add-int v3, p2, v2

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    sub-int v2, v7, v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

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

    .line 338
    .end local v5    # "M":[B
    .end local v10    # "K1":[B
    .end local v12    # "K":[B
    .end local v13    # "cp":Lorg/bouncycastle/crypto/CipherParameters;
    .local v1, "K1":[B
    .restart local v3    # "K":[B
    .restart local v4    # "M":[B
    :goto_3
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v5

    .line 339
    .local v5, "P2":[B
    const/4 v6, 0x0

    .line 340
    .local v6, "L2":[B
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v10, v10

    if-eqz v10, :cond_4

    .line 342
    invoke-virtual {v0, v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getLengthTag([B)[B

    move-result-object v6

    .line 346
    :cond_4
    add-int v10, p2, v7

    .line 347
    .local v10, "end":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v12

    sub-int v12, v10, v12

    invoke-static {v2, v12, v10}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 349
    .local v12, "T1":[B
    array-length v13, v12

    new-array v13, v13, [B

    .line 350
    .local v13, "T2":[B
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v15, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v15, v11}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v14, v15}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 351
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v15, v15

    add-int v15, p2, v15

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v9, v9

    sub-int v9, v7, v9

    move-object/from16 v16, v1

    .end local v1    # "K1":[B
    .local v16, "K1":[B
    array-length v1, v13

    sub-int/2addr v9, v1

    invoke-interface {v14, v2, v15, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 353
    if-eqz v5, :cond_5

    .line 355
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v9, v5

    const/4 v14, 0x0

    invoke-interface {v1, v5, v14, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_4

    .line 353
    :cond_5
    const/4 v14, 0x0

    .line 357
    :goto_4
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_6

    .line 359
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v9, v6

    invoke-interface {v1, v6, v14, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 361
    :cond_6
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v13, v14}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 363
    invoke-static {v12, v13}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 368
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v1, :cond_7

    .line 370
    return-object v4

    .line 374
    :cond_7
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v4, v8}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v8, v1

    .line 376
    const/4 v14, 0x0

    invoke-static {v4, v14, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 365
    :cond_8
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "invalid MAC"

    invoke-direct {v1, v9}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    .end local v3    # "K":[B
    .end local v4    # "M":[B
    .end local v5    # "P2":[B
    .end local v6    # "L2":[B
    .end local v10    # "end":I
    .end local v11    # "K2":[B
    .end local v12    # "T1":[B
    .end local v13    # "T2":[B
    .end local v16    # "K1":[B
    :cond_9
    move-object/from16 v2, p1

    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "Length of input must be greater than the MAC and V combined"

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private encryptBlock([BII)[B
    .locals 12
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

    .line 175
    const/4 v0, 0x0

    .local v0, "C":[B
    const/4 v1, 0x0

    .local v1, "K":[B
    const/4 v2, 0x0

    .local v2, "K1":[B
    const/4 v3, 0x0

    .line 178
    .local v3, "K2":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 181
    new-array v2, p3, [B

    .line 182
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    new-array v3, v4, [B

    .line 183
    array-length v4, v2

    array-length v6, v3

    add-int/2addr v4, v6

    new-array v1, v4, [B

    .line 185
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v6, v1

    invoke-interface {v4, v1, v5, v6}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 187
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 189
    array-length v4, v3

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    array-length v4, v3

    array-length v6, v2

    invoke-static {v1, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 194
    :cond_0
    array-length v4, v2

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    array-length v4, v3

    invoke-static {v1, p3, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    :goto_0
    new-array v0, p3, [B

    .line 200
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eq v4, p3, :cond_1

    .line 202
    add-int v6, p2, v4

    aget-byte v6, p1, v6

    aget-byte v7, v2, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    .end local v4    # "i":I
    :cond_1
    move v4, p3

    move-object v7, p1

    move v8, p2

    move v9, p3

    .local v4, "len":I
    goto :goto_3

    .line 209
    .end local v4    # "len":I
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v4, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 210
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    new-array v3, v4, [B

    .line 211
    array-length v4, v2

    array-length v6, v3

    add-int/2addr v4, v6

    new-array v1, v4, [B

    .line 213
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v6, v1

    invoke-interface {v4, v1, v5, v6}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 214
    array-length v4, v2

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v4, v2

    array-length v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 220
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v7, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v8, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v8, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 224
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 227
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v4, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v4

    new-array v10, v4, [B

    .line 228
    .end local v0    # "C":[B
    .local v10, "C":[B
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    const/4 v11, 0x0

    move-object v7, p1

    move v8, p2

    move v9, p3

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    .local v7, "in":[B
    .local v8, "inOff":I
    .local v9, "inLen":I
    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    .line 229
    .local p1, "len":I
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p2, v10, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2

    add-int v4, p1, p2

    move-object v0, v10

    .line 234
    .end local v10    # "C":[B
    .end local p1    # "len":I
    .restart local v0    # "C":[B
    .restart local v4    # "len":I
    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object p1

    .line 235
    .local p1, "P2":[B
    const/4 p2, 0x0

    .line 236
    .local p2, "L2":[B
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length p3, p3

    if-eqz p3, :cond_4

    .line 238
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/IESEngine;->getLengthTag([B)[B

    move-result-object p2

    .line 243
    :cond_4
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p3

    new-array p3, p3, [B

    .line 245
    .local p3, "T":[B
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v10, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v10, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v6, v10}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 246
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v10, v0

    invoke-interface {v6, v0, v5, v10}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 247
    if-eqz p1, :cond_5

    .line 249
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v10, p1

    invoke-interface {v6, p1, v5, v10}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 251
    :cond_5
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v6, v6

    if-eqz v6, :cond_6

    .line 253
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v10, p2

    invoke-interface {v6, p2, v5, v10}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 255
    :cond_6
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v6, p3, v5}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 259
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v6, v6

    add-int/2addr v6, v4

    array-length v10, p3

    add-int/2addr v6, v10

    new-array v6, v6, [B

    .line 260
    .local v6, "Output":[B
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v11, v11

    invoke-static {v10, v5, v6, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v10, v10

    invoke-static {v0, v5, v6, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v10, v10

    add-int/2addr v10, v4

    array-length v11, p3

    invoke-static {p3, v5, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v6
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

    .line 147
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 149
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    .line 150
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    .line 155
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    .line 157
    :goto_0
    return-void
.end method


# virtual methods
.method public getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

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

    .line 453
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 454
    .local v0, "L2":[B
    if-eqz p1, :cond_0

    .line 456
    array-length v1, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    mul-long v1, v1, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 458
    :cond_0
    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

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

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 139
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 140
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    .line 142
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 143
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

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 123
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 124
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 126
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 127
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

    .line 105
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 106
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 107
    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    .line 110
    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 111
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

    .line 387
    const-string/jumbo v0, "unable to recover ephemeral public key: "

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 389
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v0

    .line 393
    .local v0, "ephKeyPair":Lorg/bouncycastle/crypto/EphemeralKeyPair;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 394
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    .line 395
    .end local v0    # "ephKeyPair":Lorg/bouncycastle/crypto/EphemeralKeyPair;
    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    if-eqz v1, :cond_1

    .line 401
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 405
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    nop

    .line 416
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p3, v0

    .line 417
    .local v0, "encLength":I
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    .line 411
    .end local v0    # "encLength":I
    :catch_0
    move-exception v2

    .line 413
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

    .line 407
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 409
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

    .line 422
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 423
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 424
    .local v0, "z":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    .line 427
    .local v1, "Z":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    .line 430
    .local v2, "VZ":[B
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 431
    move-object v1, v2

    .line 437
    .end local v2    # "VZ":[B
    :cond_2
    :try_start_1
    new-instance v2, Lorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 438
    .local v2, "kdfParam":Lorg/bouncycastle/crypto/params/KDFParameters;
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v4, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 440
    iget-boolean v4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v4, :cond_3

    .line 441
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;->encryptBlock([BII)[B

    move-result-object v4

    goto :goto_1

    .line 442
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;->decryptBlock([BII)[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :goto_1
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 440
    return-object v4

    .line 446
    .end local v2    # "kdfParam":Lorg/bouncycastle/crypto/params/KDFParameters;
    :catchall_0
    move-exception v2

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 447
    throw v2
.end method

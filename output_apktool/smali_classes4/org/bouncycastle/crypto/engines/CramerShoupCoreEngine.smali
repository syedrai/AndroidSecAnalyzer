.class public Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;
.super Ljava/lang/Object;
.source "CramerShoupCoreEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

.field private label:[B

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:[B

    return-void
.end method

.method private generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "random"
        }
    .end annotation

    .line 284
    sget-object v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "m"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "p"
        }
    .end annotation

    .line 292
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 4
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

    .line 118
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for Cramer Shoup cipher."

    if-gt p3, v0, :cond_5

    .line 122
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    array-length v0, p1

    if-eq p3, v0, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    move-object v0, p1

    .local v0, "block":[B
    goto :goto_2

    .line 131
    .end local v0    # "block":[B
    :cond_3
    :goto_1
    new-array v0, p3, [B

    .line 133
    .restart local v0    # "block":[B
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_2
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 141
    .local v3, "res":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_4

    .line 146
    return-object v3

    .line 143
    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    .end local v0    # "block":[B
    .end local v3    # "res":Ljava/math/BigInteger;
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 5
    .param p1, "result"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 153
    .local v0, "output":[B
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 155
    aget-byte v1, v0, v3

    if-nez v1, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v4

    if-le v1, v4, :cond_0

    .line 157
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 159
    .local v1, "tmp":[B
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    return-object v1

    .line 164
    .end local v1    # "tmp":[B
    :cond_0
    array-length v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 166
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 168
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v4, v0

    sub-int/2addr v2, v4

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    return-object v1

    .line 175
    .end local v1    # "tmp":[B
    :cond_1
    aget-byte v1, v0, v3

    if-nez v1, :cond_2

    .line 177
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 179
    .restart local v1    # "tmp":[B
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    return-object v1

    .line 185
    .end local v1    # "tmp":[B
    :cond_2
    return-object v0
.end method

.method public decryptBlock(Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;)Ljava/math/BigInteger;
    .locals 13
    .param p1, "input"    # Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
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
            Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "result":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    check-cast v1, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .line 248
    .local v1, "sk":Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 250
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getH()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    .line 251
    .local v3, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->getU1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 252
    .local v4, "u1Bytes":[B
    array-length v5, v4

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 253
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->getU2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 254
    .local v5, "u2Bytes":[B
    array-length v7, v5

    invoke-interface {v3, v5, v6, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 255
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->getE()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 256
    .local v7, "eBytes":[B
    array-length v8, v7

    invoke-interface {v3, v7, v6, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 257
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:[B

    if-eqz v8, :cond_0

    .line 259
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:[B

    .line 260
    .local v8, "lBytes":[B
    array-length v9, v8

    invoke-interface {v3, v8, v6, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 262
    .end local v8    # "lBytes":[B
    :cond_0
    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    .line 263
    .local v8, "out":[B
    invoke-interface {v3, v8, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 265
    new-instance v6, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v6, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 266
    .local v6, "a":Ljava/math/BigInteger;
    iget-object v9, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    iget-object v10, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    .line 267
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 270
    .local v9, "v":Ljava/math/BigInteger;
    iget-object v10, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 272
    iget-object v10, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    iget-object v11, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_1
    new-instance v10, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;

    const-string v11, "Sorry, that ciphertext is not correct"

    invoke-direct {v10, v11}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 279
    .end local v1    # "sk":Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .end local v2    # "p":Ljava/math/BigInteger;
    .end local v3    # "digest":Lorg/bouncycastle/crypto/Digest;
    .end local v4    # "u1Bytes":[B
    .end local v5    # "u2Bytes":[B
    .end local v6    # "a":Ljava/math/BigInteger;
    .end local v7    # "eBytes":[B
    .end local v8    # "out":[B
    .end local v9    # "v":Ljava/math/BigInteger;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public encryptBlock(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .locals 19
    .param p1, "input"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 193
    .local v2, "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v3, v3, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    check-cast v3, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 196
    .local v3, "pk":Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 197
    .local v4, "p":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v5

    .line 198
    .local v5, "g1":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v6

    .line 200
    .local v6, "g2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getH()Ljava/math/BigInteger;

    move-result-object v7

    .line 202
    .local v7, "h":Ljava/math/BigInteger;
    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 204
    return-object v2

    .line 207
    :cond_0
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    .line 211
    .local v8, "r":Ljava/math/BigInteger;
    invoke-virtual {v5, v8, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 212
    .local v9, "u1":Ljava/math/BigInteger;
    invoke-virtual {v6, v8, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 213
    .local v10, "u2":Ljava/math/BigInteger;
    invoke-virtual {v7, v8, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 215
    .local v11, "e":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getH()Lorg/bouncycastle/crypto/Digest;

    move-result-object v12

    .line 216
    .local v12, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 217
    .local v13, "u1Bytes":[B
    array-length v14, v13

    const/4 v15, 0x0

    invoke-interface {v12, v13, v15, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 218
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 219
    .local v14, "u2Bytes":[B
    array-length v1, v14

    invoke-interface {v12, v14, v15, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 220
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 221
    .local v1, "eBytes":[B
    move-object/from16 v16, v2

    .end local v2    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .local v16, "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    array-length v2, v1

    invoke-interface {v12, v1, v15, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 222
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:[B

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:[B

    .line 225
    .local v2, "lBytes":[B
    array-length v0, v2

    invoke-interface {v12, v2, v15, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 227
    .end local v2    # "lBytes":[B
    :cond_1
    invoke-interface {v12}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 228
    .local v0, "out":[B
    invoke-interface {v12, v0, v15}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 229
    new-instance v2, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-direct {v2, v15, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 231
    .local v2, "a":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getC()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v8, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    move-object/from16 v17, v0

    .end local v0    # "out":[B
    .local v17, "out":[B
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v18, v1

    .end local v1    # "eBytes":[B
    .local v18, "eBytes":[B
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 233
    .local v0, "v":Ljava/math/BigInteger;
    new-instance v1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;

    invoke-direct {v1, v9, v10, v11, v0}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v2, v1

    .end local v16    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .local v1, "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    goto :goto_0

    .line 193
    .end local v0    # "v":Ljava/math/BigInteger;
    .end local v1    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .end local v3    # "pk":Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "g1":Ljava/math/BigInteger;
    .end local v6    # "g2":Ljava/math/BigInteger;
    .end local v7    # "h":Ljava/math/BigInteger;
    .end local v8    # "r":Ljava/math/BigInteger;
    .end local v9    # "u1":Ljava/math/BigInteger;
    .end local v10    # "u2":Ljava/math/BigInteger;
    .end local v11    # "e":Ljava/math/BigInteger;
    .end local v12    # "digest":Lorg/bouncycastle/crypto/Digest;
    .end local v13    # "u1Bytes":[B
    .end local v14    # "u2Bytes":[B
    .end local v17    # "out":[B
    .end local v18    # "eBytes":[B
    .local v2, "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    :cond_2
    move-object/from16 v16, v2

    .line 235
    .end local v2    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .restart local v16    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    move-object/from16 v2, v16

    .end local v16    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .restart local v2    # "result":Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    :goto_0
    return-object v2
.end method

.method public getInputBlockSize()I
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 85
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 87
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 91
    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 106
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 108
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1

    .line 112
    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
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

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 58
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 60
    .local v1, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    .line 61
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 62
    .end local v1    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 65
    :cond_0
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    .line 68
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    .line 69
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    .line 71
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    const-string v5, "CramerShoup"

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 72
    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "param",
            "label"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 43
    invoke-static {p3}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:[B

    .line 44
    return-void
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "needed",
            "provided"
        }
    .end annotation

    .line 297
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

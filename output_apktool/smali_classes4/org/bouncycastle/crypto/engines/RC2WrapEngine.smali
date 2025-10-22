.class public Lorg/bouncycastle/crypto/engines/RC2WrapEngine;
.super Ljava/lang/Object;
.source "RC2WrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/CipherParameters;

.field private paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lorg/bouncycastle/crypto/Digest;

.field private sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    .line 48
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 359
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 361
    .local v1, "result":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 362
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->digest:[B

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 364
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->digest:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    return-object v1
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1
    .param p1, "key"    # [B
    .param p2, "checksum"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "checksum"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "RC2"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forWrapping",
            "param"
        }
    .end annotation

    .line 58
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    .line 59
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 61
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 64
    .local v0, "pWithR":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    .line 65
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 66
    .end local v0    # "pWithR":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    .line 72
    :goto_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 74
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lorg/bouncycastle/crypto/CipherParameters;

    .line 78
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v0, v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV is not 8 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not supply an IV for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lorg/bouncycastle/crypto/CipherParameters;

    .line 95
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_4

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 104
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lorg/bouncycastle/crypto/CipherParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 108
    :cond_4
    :goto_1
    return-void
.end method

.method public unwrap([BII)[B
    .locals 11
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

    .line 232
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-nez v0, :cond_7

    .line 237
    if-eqz p1, :cond_6

    .line 242
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    rem-int v0, p3, v0

    if-nez v0, :cond_5

    .line 264
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lorg/bouncycastle/crypto/CipherParameters;

    sget-object v2, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 266
    .local v0, "param2":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 268
    new-array v1, p3, [B

    .line 270
    .local v1, "TEMP3":[B
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v5

    div-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 274
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v4

    mul-int v4, v4, v3

    .line 276
    .local v4, "currentBytePos":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5, v1, v4, v1, v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 272
    .end local v4    # "currentBytePos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v3    # "i":I
    :cond_0
    array-length v3, v1

    new-array v3, v3, [B

    .line 282
    .local v3, "TEMP2":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 284
    array-length v5, v1

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v5, v6

    aget-byte v5, v1, v5

    aput-byte v5, v3, v4

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 289
    .end local v4    # "i":I
    :cond_1
    const/16 v4, 0x8

    new-array v5, v4, [B

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 291
    array-length v5, v3

    sub-int/2addr v5, v4

    new-array v5, v5, [B

    .line 293
    .local v5, "TEMP1":[B
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-static {v3, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v6, v3

    sub-int/2addr v6, v4

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    new-instance v6, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lorg/bouncycastle/crypto/CipherParameters;

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 300
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6, v2, v7}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 302
    array-length v6, v5

    new-array v6, v6, [B

    .line 304
    .local v6, "LCEKPADICV":[B
    array-length v7, v5

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v9

    div-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 308
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v8

    mul-int v8, v8, v7

    .line 310
    .local v8, "currentBytePos":I
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v9, v6, v8, v6, v8}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 306
    .end local v8    # "currentBytePos":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 317
    .end local v7    # "i":I
    :cond_2
    array-length v7, v6

    sub-int/2addr v7, v4

    new-array v7, v7, [B

    .line 318
    .local v7, "result":[B
    new-array v8, v4, [B

    .line 320
    .local v8, "CKStoBeVerified":[B
    array-length v9, v6

    sub-int/2addr v9, v4

    invoke-static {v6, v2, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    array-length v9, v6

    sub-int/2addr v9, v4

    invoke-static {v6, v9, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    array-length v4, v7

    aget-byte v9, v7, v2

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x1

    add-int/2addr v9, v10

    sub-int/2addr v4, v9

    const/4 v9, 0x7

    if-gt v4, v9, :cond_3

    .line 341
    aget-byte v4, v7, v2

    new-array v4, v4, [B

    .line 342
    .local v4, "CEK":[B
    array-length v9, v4

    invoke-static {v7, v10, v4, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    return-object v4

    .line 336
    .end local v4    # "CEK":[B
    :cond_3
    new-instance v4, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    array-length v9, v7

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v10

    sub-int/2addr v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "too many pad bytes ("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_4
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "Checksum inside ciphertext is corrupted"

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    .end local v0    # "param2":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "TEMP3":[B
    .end local v3    # "TEMP2":[B
    .end local v5    # "TEMP1":[B
    .end local v6    # "LCEKPADICV":[B
    .end local v7    # "result":[B
    .end local v8    # "CKStoBeVerified":[B
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 245
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ciphertext not multiple of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Null pointer as ciphertext"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 18
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

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v2, :cond_6

    .line 136
    add-int/lit8 v2, v1, 0x1

    .line 137
    .local v2, "length":I
    rem-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_0

    .line 139
    rem-int/lit8 v3, v2, 0x8

    rsub-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 142
    :cond_0
    new-array v3, v2, [B

    .line 144
    .local v3, "keyToBeWrapped":[B
    int-to-byte v4, v1

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 145
    const/4 v4, 0x1

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static {v6, v7, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v8, v3

    sub-int/2addr v8, v1

    sub-int/2addr v8, v4

    new-array v8, v8, [B

    .line 149
    .local v8, "pad":[B
    array-length v9, v8

    if-lez v9, :cond_1

    .line 151
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 152
    add-int/lit8 v9, v1, 0x1

    array-length v10, v8

    invoke-static {v8, v5, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_1
    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v9

    .line 159
    .local v9, "CKS":[B
    array-length v10, v3

    array-length v11, v9

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 161
    .local v10, "WKCKS":[B
    array-length v11, v3

    invoke-static {v3, v5, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v11, v3

    array-length v12, v9

    invoke-static {v9, v5, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v11, v10

    new-array v11, v11, [B

    .line 168
    .local v11, "TEMP1":[B
    array-length v12, v10

    invoke-static {v10, v5, v11, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    array-length v12, v10

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    div-int/2addr v12, v13

    .line 171
    .local v12, "noOfBlocks":I
    array-length v13, v10

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v14}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    rem-int/2addr v13, v14

    .line 173
    .local v13, "extraBytes":I
    if-nez v13, :cond_5

    .line 178
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v14, v4, v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 180
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_2

    .line 182
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v15

    mul-int v15, v15, v14

    .line 184
    .local v15, "currentBytePos":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4, v11, v15, v11, v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 180
    .end local v15    # "currentBytePos":I
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_0

    .line 188
    .end local v14    # "i":I
    :cond_2
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v4, v4

    array-length v14, v11

    add-int/2addr v4, v14

    new-array v4, v4, [B

    .line 190
    .local v4, "TEMP2":[B
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v14, v5, v4, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v14, v14

    array-length v15, v11

    invoke-static {v11, v5, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    array-length v5, v4

    new-array v5, v5, [B

    .line 196
    .local v5, "TEMP3":[B
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1
    array-length v15, v4

    if-ge v14, v15, :cond_3

    .line 198
    array-length v15, v4

    add-int/lit8 v17, v14, 0x1

    sub-int v15, v15, v17

    aget-byte v15, v4, v15

    aput-byte v15, v5, v14

    .line 196
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 205
    .end local v14    # "i":I
    :cond_3
    new-instance v14, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->param:Lorg/bouncycastle/crypto/CipherParameters;

    sget-object v1, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    invoke-direct {v14, v15, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 207
    .local v14, "param2":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v15, 0x1

    invoke-virtual {v1, v15, v14}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v15, v12, 0x1

    if-ge v1, v15, :cond_4

    .line 211
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v15

    mul-int v15, v15, v1

    .line 213
    .restart local v15    # "currentBytePos":I
    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1, v5, v15, v5, v15}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 209
    .end local v15    # "currentBytePos":I
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 216
    .end local v1    # "i":I
    :cond_4
    return-object v5

    .line 175
    .end local v4    # "TEMP2":[B
    .end local v5    # "TEMP3":[B
    .end local v14    # "param2":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Not multiple of block length"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v2    # "length":I
    .end local v3    # "keyToBeWrapped":[B
    .end local v8    # "pad":[B
    .end local v9    # "CKS":[B
    .end local v10    # "WKCKS":[B
    .end local v11    # "TEMP1":[B
    .end local v12    # "noOfBlocks":I
    .end local v13    # "extraBytes":I
    :cond_6
    move-object/from16 v6, p1

    move/from16 v7, p2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized for wrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

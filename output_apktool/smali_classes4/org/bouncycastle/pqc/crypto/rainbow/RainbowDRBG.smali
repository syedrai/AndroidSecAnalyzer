.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;
.super Ljava/security/SecureRandom;
.source "RainbowDRBG.java"


# instance fields
.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:[B

.field private seed:[B

.field private v:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "hashAlgo"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "hashAlgo"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    .line 22
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->init(I)V

    .line 23
    return-void
.end method

.method private AES256_CTR_DRBG_Update([B[B[B)V
    .locals 7
    .param p1, "entropy_input"    # [B
    .param p2, "key"    # [B
    .param p3, "v"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entropy_input",
            "key",
            "v"
        }
    .end annotation

    .line 104
    const/16 v0, 0x30

    new-array v1, v0, [B

    .line 106
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 109
    const/16 v3, 0xf

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 111
    aget-byte v5, p3, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    .line 113
    aput-byte v4, p3, v3

    .line 109
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 117
    :cond_0
    aget-byte v4, p3, v3

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 118
    nop

    .line 122
    .end local v3    # "j":I
    :cond_1
    mul-int/lit8 v3, v2, 0x10

    invoke-direct {p0, p2, p3, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 127
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 129
    aget-byte v3, v1, v2

    aget-byte v5, p1, v2

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 133
    .end local v2    # "i":I
    :cond_3
    array-length v0, p2

    invoke-static {v1, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    const/16 v0, 0x20

    array-length v2, p3

    invoke-static {v1, v0, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    return-void
.end method

.method private AES256_ECB([B[B[BI)V
    .locals 5
    .param p1, "key"    # [B
    .param p2, "ctr"    # [B
    .param p3, "buffer"    # [B
    .param p4, "startPosition"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "ctr",
            "buffer",
            "startPosition"
        }
    .end annotation

    .line 85
    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 87
    .local v0, "cipher":Lorg/bouncycastle/crypto/engines/AESEngine;
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 91
    add-int v2, p4, v1

    invoke-virtual {v0, p2, v1, p3, v2}, Lorg/bouncycastle/crypto/engines/AESEngine;->processBlock([BI[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 97
    .end local v0    # "cipher":Lorg/bouncycastle/crypto/engines/AESEngine;
    .end local v1    # "i":I
    :cond_0
    nop

    .line 98
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drbg failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private init(I)V
    .locals 4
    .param p1, "strength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strength"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    array-length v0, v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    array-length v3, v3

    sub-int/2addr v1, v3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    .line 35
    .local v0, "out":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    .line 37
    .end local v0    # "out":[B
    :goto_0
    return-void
.end method

.method private randombytes_init([BI)V
    .locals 3
    .param p1, "entropyInput"    # [B
    .param p2, "strength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entropyInput",
            "strength"
        }
    .end annotation

    .line 142
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 144
    .local v0, "seedMaterial":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    .line 147
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    .line 150
    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 7
    .param p1, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 43
    .local v0, "block":[B
    const/4 v1, 0x0

    .line 45
    .local v1, "i":I
    array-length v2, p1

    .line 47
    .local v2, "xlen":I
    :goto_0
    if-lez v2, :cond_3

    .line 49
    const/16 v3, 0xf

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 51
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v5, v5, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    .line 53
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aput-byte v4, v5, v3

    .line 49
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 57
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v6, v5, v3

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 58
    nop

    .line 62
    .end local v3    # "j":I
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v3, v5, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    .line 64
    const/16 v3, 0xf

    if-le v2, v3, :cond_2

    .line 66
    array-length v3, v0

    invoke-static {v0, v4, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    add-int/lit8 v1, v1, 0x10

    .line 68
    add-int/lit8 v2, v2, -0x10

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v0, v4, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    .line 78
    return-void
.end method

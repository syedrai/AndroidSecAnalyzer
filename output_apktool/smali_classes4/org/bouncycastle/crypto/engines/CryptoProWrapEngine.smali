.class public Lorg/bouncycastle/crypto/engines/CryptoProWrapEngine;
.super Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;
.source "CryptoProWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;-><init>()V

    return-void
.end method

.method private static bitSet(BI)Z
    .locals 2
    .param p0, "v"    # B
    .param p1, "bitNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "bitNo"
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static cryptoProDiversify([B[B[B)[B
    .locals 10
    .param p0, "K"    # [B
    .param p1, "ukm"    # [B
    .param p2, "sBox"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "K",
            "ukm",
            "sBox"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "sOn":I
    const/4 v3, 0x0

    .line 78
    .local v3, "sOff":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-eq v4, v1, :cond_1

    .line 80
    mul-int/lit8 v5, v4, 0x4

    invoke-static {p0, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 81
    .local v5, "kj":I
    aget-byte v6, p1, v0

    invoke-static {v6, v4}, Lorg/bouncycastle/crypto/engines/CryptoProWrapEngine;->bitSet(BI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    add-int/2addr v2, v5

    goto :goto_2

    .line 87
    :cond_0
    add-int/2addr v3, v5

    .line 78
    .end local v5    # "kj":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    .end local v4    # "j":I
    :cond_1
    new-array v4, v1, [B

    .line 92
    .local v4, "s":[B
    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 93
    const/4 v6, 0x4

    invoke-static {v3, v4, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 95
    new-instance v6, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;

    new-instance v7, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v7}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 97
    .local v6, "c":Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;
    new-instance v7, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v8, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v8, v9, p2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-direct {v7, v8, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 99
    invoke-virtual {v6, p0, v5, p0, v5}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 100
    invoke-virtual {v6, p0, v1, p0, v1}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 101
    const/16 v1, 0x10

    invoke-virtual {v6, p0, v1, p0, v1}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 102
    const/16 v1, 0x18

    invoke-virtual {v6, p0, v1, p0, v1}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 74
    .end local v2    # "sOn":I
    .end local v3    # "sOff":I
    .end local v4    # "s":[B
    .end local v6    # "c":Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method


# virtual methods
.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
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

    .line 17
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 19
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 20
    .local v0, "pr":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 23
    .end local v0    # "pr":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    .line 24
    .local v0, "pU":Lorg/bouncycastle/crypto/params/ParametersWithUKM;
    const/4 v1, 0x0

    .line 29
    .local v1, "sBox":[B
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 32
    .local v2, "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v1

    goto :goto_0

    .line 36
    .end local v2    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 39
    .restart local v2    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    :goto_0
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/bouncycastle/crypto/engines/CryptoProWrapEngine;->cryptoProDiversify([B[B[B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 41
    .end local v2    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    .local v3, "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    if-eqz v1, :cond_2

    .line 43
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-direct {v4, v3, v1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-super {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 47
    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-super {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 49
    :goto_1
    return-void
.end method

.class public abstract Lorg/bouncycastle/crypto/fpe/FPEEngine;
.super Ljava/lang/Object;
.source "FPEEngine.java"


# instance fields
.field protected final baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0
    .param p1, "baseCipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseCipher"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/crypto/fpe/FPEEngine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 23
    return-void
.end method

.method protected static toByteArray([S)[B
    .locals 4
    .param p0, "buf"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 91
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 93
    .local v0, "rv":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 95
    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected static toShortArray([B)[S
    .locals 3
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 74
    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 79
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 81
    .local v0, "rv":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 83
    mul-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToShort([BI)S

    move-result v2

    aput-short v2, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 76
    .end local v0    # "rv":[S
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must be an even number of bytes for a wide radix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract decryptBlock([BII[BI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inBuf",
            "inOff",
            "length",
            "outBuf",
            "outOff"
        }
    .end annotation
.end method

.method protected abstract encryptBlock([BII[BI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inBuf",
            "inOff",
            "length",
            "outBuf",
            "outOff"
        }
    .end annotation
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
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
.end method

.method public processBlock([BII[BI)I
    .locals 2
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I
    .param p4, "outBuf"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inBuf",
            "inOff",
            "length",
            "outBuf",
            "outOff"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEEngine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    if-eqz v0, :cond_5

    .line 42
    if-ltz p3, :cond_4

    .line 47
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    .line 52
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    .line 57
    array-length v0, p4

    add-int v1, p5, p3

    if-lt v0, v1, :cond_1

    .line 62
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/fpe/FPEEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/FPEEngine;->encryptBlock([BII[BI)I

    move-result v0

    return v0

    .line 68
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/FPEEngine;->decryptBlock([BII[BI)I

    move-result v0

    return v0

    .line 59
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input length cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FPE engine not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

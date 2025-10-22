.class public abstract Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;
.super Ljava/lang/Object;
.source "DefaultMultiBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/MultiBlockCipher;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getMultiBlockSize()I
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public processBlocks([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "blockCount"    # I
    .param p4, "out"    # [B
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
            "in",
            "inOff",
            "blockCount",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "resultLen":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;->getMultiBlockSize()I

    move-result v1

    .line 24
    .local v1, "blockSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, p3, :cond_0

    .line 26
    add-int v3, p5, v0

    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 28
    add-int/2addr p2, v1

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

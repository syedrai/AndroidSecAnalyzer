.class public abstract Lorg/bouncycastle/crypto/StreamBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "StreamBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/crypto/StreamBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract calculateByte(B)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/StreamBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
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
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 36
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 40
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 45
    move v0, p2

    .line 46
    .local v0, "inStart":I
    add-int v1, p2, p3

    .line 47
    .local v1, "inEnd":I
    move v2, p5

    .line 49
    .local v2, "outStart":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outStart":I
    .local v3, "outStart":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "inStart":I
    .local v4, "inStart":I
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    aput-byte v0, p4, v2

    move v2, v3

    move v0, v4

    goto :goto_0

    .line 54
    .end local v3    # "outStart":I
    .end local v4    # "inStart":I
    .restart local v0    # "inStart":I
    .restart local v2    # "outStart":I
    :cond_0
    return p3

    .line 42
    .end local v0    # "inStart":I
    .end local v1    # "inEnd":I
    .end local v2    # "outStart":I
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too small"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final returnByte(B)B
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method

.class public interface abstract Lorg/bouncycastle/crypto/MultiBlockCipher;
.super Ljava/lang/Object;
.source "MultiBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# virtual methods
.method public abstract getMultiBlockSize()I
.end method

.method public abstract processBlocks([BII[BI)I
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
.end method

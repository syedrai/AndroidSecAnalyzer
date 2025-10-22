.class public interface abstract Lorg/bouncycastle/util/encoders/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# virtual methods
.method public abstract decode([BII[BI)I
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
            "length",
            "out",
            "outOff"
        }
    .end annotation
.end method

.method public abstract encode([BII[BI)I
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
            "length",
            "out",
            "outOff"
        }
    .end annotation
.end method

.method public abstract getDecodedBlockSize()I
.end method

.method public abstract getEncodedBlockSize()I
.end method

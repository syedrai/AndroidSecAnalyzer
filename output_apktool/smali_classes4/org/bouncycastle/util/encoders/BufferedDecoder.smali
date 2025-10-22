.class public Lorg/bouncycastle/util/encoders/BufferedDecoder;
.super Ljava/lang/Object;
.source "BufferedDecoder.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected translator:Lorg/bouncycastle/util/encoders/Translator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/encoders/Translator;I)V
    .locals 2
    .param p1, "translator"    # Lorg/bouncycastle/util/encoders/Translator;
    .param p2, "bufSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "translator",
            "bufSize"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    .line 25
    invoke-interface {p1}, Lorg/bouncycastle/util/encoders/Translator;->getEncodedBlockSize()I

    move-result v0

    rem-int v0, p2, v0

    if-nez v0, :cond_0

    .line 30
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 32
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size not multiple of input block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public processByte(B[BI)I
    .locals 9
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "outOff"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "resultLen":I
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    aput-byte p1, v1, v2

    .line 43
    iget v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 45
    iget-object v3, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v6, v1

    const/4 v5, 0x0

    move-object v7, p2

    move v8, p3

    .end local p2    # "out":[B
    .end local p3    # "outOff":I
    .local v7, "out":[B
    .local v8, "outOff":I
    invoke-interface/range {v3 .. v8}, Lorg/bouncycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v0

    .line 46
    const/4 p2, 0x0

    iput p2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    goto :goto_0

    .line 43
    .end local v7    # "out":[B
    .end local v8    # "outOff":I
    .restart local p2    # "out":[B
    .restart local p3    # "outOff":I
    :cond_0
    move-object v7, p2

    move v8, p3

    .line 49
    .end local p2    # "out":[B
    .end local p3    # "outOff":I
    .restart local v7    # "out":[B
    .restart local v8    # "outOff":I
    :goto_0
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 10
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

    .line 59
    if-ltz p3, :cond_2

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "resultLen":I
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    sub-int/2addr v1, v2

    .line 67
    .local v1, "gapLen":I
    if-le p3, v1, :cond_0

    .line 69
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v3, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v7, v2

    const/4 v6, 0x0

    move-object v8, p4

    move v9, p5

    .end local p4    # "out":[B
    .end local p5    # "outOff":I
    .local v8, "out":[B
    .local v9, "outOff":I
    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result p4

    move-object v6, v8

    .end local v8    # "out":[B
    .local v6, "out":[B
    add-int/2addr v0, p4

    .line 73
    const/4 p4, 0x0

    iput p4, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 75
    sub-int/2addr p3, v1

    .line 76
    add-int v4, p2, v1

    .line 77
    .end local p2    # "inOff":I
    .local v4, "inOff":I
    add-int v7, v9, v0

    .line 79
    .end local v9    # "outOff":I
    .local v7, "outOff":I
    iget-object p2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length p2, p2

    rem-int p2, p3, p2

    sub-int v5, p3, p2

    .line 81
    .local v5, "chunkSize":I
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->translator:Lorg/bouncycastle/util/encoders/Translator;

    move-object v3, p1

    .end local p1    # "in":[B
    .local v3, "in":[B
    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result p1

    add-int/2addr v0, p1

    .line 83
    sub-int/2addr p3, v5

    .line 84
    add-int p2, v4, v5

    move p5, v7

    .end local v4    # "inOff":I
    .restart local p2    # "inOff":I
    goto :goto_0

    .line 67
    .end local v3    # "in":[B
    .end local v5    # "chunkSize":I
    .end local v6    # "out":[B
    .end local v7    # "outOff":I
    .restart local p1    # "in":[B
    .restart local p4    # "out":[B
    .restart local p5    # "outOff":I
    :cond_0
    move-object v3, p1

    move-object v6, p4

    move v9, p5

    .line 87
    .end local p1    # "in":[B
    .end local p4    # "out":[B
    .restart local v3    # "in":[B
    .restart local v6    # "out":[B
    :goto_0
    if-eqz p3, :cond_1

    .line 89
    iget-object p1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->buf:[B

    iget p4, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    invoke-static {v3, p2, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget p1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 94
    :cond_1
    return v0

    .line 61
    .end local v0    # "resultLen":I
    .end local v1    # "gapLen":I
    .end local v3    # "in":[B
    .end local v6    # "out":[B
    .restart local p1    # "in":[B
    .restart local p4    # "out":[B
    :cond_2
    move-object v3, p1

    move-object v6, p4

    .end local p1    # "in":[B
    .end local p4    # "out":[B
    .restart local v3    # "in":[B
    .restart local v6    # "out":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "Can\'t have a negative input length!"

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

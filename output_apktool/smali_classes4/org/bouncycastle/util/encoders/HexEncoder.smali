.class public Lorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    .line 21
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 45
    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    .line 46
    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ignore(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 104
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "length":I
    const/16 v1, 0x24

    new-array v1, v1, [B

    .line 191
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 193
    .local v2, "bufOff":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 195
    .local v3, "end":I
    :goto_0
    if-lez v3, :cond_1

    .line 197
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    goto :goto_1

    .line 202
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 205
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 206
    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 208
    :goto_3
    if-ge v4, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 213
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    .line 215
    .local v4, "b1":B
    :goto_4
    if-ge v6, v3, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 220
    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    .line 222
    .local v5, "b2":B
    or-int v6, v4, v5

    if-ltz v6, :cond_5

    .line 227
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "bufOff":I
    .local v6, "bufOff":I
    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 229
    array-length v2, v1

    if-ne v6, v2, :cond_4

    .line 231
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 232
    const/4 v2, 0x0

    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    goto :goto_5

    .line 229
    .end local v2    # "bufOff":I
    .restart local v6    # "bufOff":I
    :cond_4
    move v2, v6

    .line 235
    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_2

    .line 224
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v8, "invalid characters encountered in Hex string"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 238
    .end local v5    # "b2":B
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_6
    if-lez v2, :cond_7

    .line 240
    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 243
    :cond_7
    return v0
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 9
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "length",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "outLen":I
    const/16 v1, 0x24

    new-array v1, v1, [B

    .line 123
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 125
    .local v2, "bufOff":I
    add-int v3, p2, p3

    .line 127
    .local v3, "end":I
    :goto_0
    if-le v3, p2, :cond_1

    .line 129
    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p1, v4

    int-to-char v4, v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    move v4, p2

    .line 138
    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 140
    :goto_3
    if-ge v4, v3, :cond_2

    aget-byte v5, p1, v4

    int-to-char v5, v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 145
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget-byte v4, p1, v4

    aget-byte v4, v5, v4

    .line 147
    .local v4, "b1":B
    :goto_4
    if-ge v6, v3, :cond_3

    aget-byte v5, p1, v6

    int-to-char v5, v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 152
    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v6, p1, v6

    aget-byte v5, v5, v6

    .line 154
    .local v5, "b2":B
    or-int v6, v4, v5

    if-ltz v6, :cond_5

    .line 159
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "bufOff":I
    .local v6, "bufOff":I
    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 161
    array-length v2, v1

    if-ne v6, v2, :cond_4

    .line 163
    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 164
    const/4 v2, 0x0

    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    goto :goto_5

    .line 161
    .end local v2    # "bufOff":I
    .restart local v6    # "bufOff":I
    :cond_4
    move v2, v6

    .line 166
    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_2

    .line 156
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v8, "invalid characters encountered in Hex data"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    .end local v5    # "b2":B
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_6
    if-lez v2, :cond_7

    .line 171
    const/4 v5, 0x0

    invoke-virtual {p4, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 174
    :cond_7
    return v0
.end method

.method decodeStrict(Ljava/lang/String;II)[B
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    if-eqz p1, :cond_4

    .line 252
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    .line 256
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_2

    .line 261
    ushr-int/lit8 v0, p3, 0x1

    .line 262
    .local v0, "resultLen":I
    new-array v1, v0, [B

    .line 264
    .local v1, "result":[B
    move v2, p2

    .line 265
    .local v2, "strPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 267
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "strPos":I
    .local v5, "strPos":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v4, v2

    .line 268
    .local v2, "b1":B
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "strPos":I
    .local v6, "strPos":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    .line 270
    .local v4, "b2":B
    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v4

    .line 271
    .local v5, "n":I
    if-ltz v5, :cond_0

    .line 276
    int-to-byte v7, v5

    aput-byte v7, v1, v3

    .line 265
    .end local v2    # "b1":B
    .end local v4    # "b2":B
    .end local v5    # "n":I
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    .line 273
    .restart local v2    # "b1":B
    .restart local v4    # "b2":B
    .restart local v5    # "n":I
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "invalid characters encountered in Hex string"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 278
    .end local v3    # "i":I
    .end local v4    # "b2":B
    .end local v5    # "n":I
    .end local v6    # "strPos":I
    .local v2, "strPos":I
    :cond_1
    return-object v1

    .line 258
    .end local v0    # "resultLen":I
    .end local v1    # "result":[B
    .end local v2    # "strPos":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset and/or length specified"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'str\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    if-gez p3, :cond_0

    .line 85
    return v0

    .line 88
    :cond_0
    const/16 v1, 0x48

    new-array v6, v1, [B

    .line 89
    .local v6, "tmp":[B
    move v1, p3

    move v4, p2

    .line 90
    .end local p2    # "off":I
    .local v1, "remaining":I
    .local v4, "off":I
    :goto_0
    if-lez v1, :cond_1

    .line 92
    const/16 p2, 0x24

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 93
    .local v5, "inLen":I
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "buf":[B
    .local v3, "buf":[B
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result p1

    .line 94
    .local p1, "outLen":I
    invoke-virtual {p4, v6, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    add-int/2addr v4, v5

    .line 96
    sub-int/2addr v1, v5

    .line 97
    .end local v5    # "inLen":I
    .end local p1    # "outLen":I
    move-object p1, v3

    goto :goto_0

    .line 98
    .end local v3    # "buf":[B
    .local p1, "buf":[B
    :cond_1
    move-object v3, p1

    .end local p1    # "buf":[B
    .restart local v3    # "buf":[B
    mul-int/lit8 p1, p3, 0x2

    return p1
.end method

.method public encode([BII[BI)I
    .locals 7
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
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
            "inLen",
            "outBuf",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    move v0, p2

    .line 51
    .local v0, "inPos":I
    add-int v1, p2, p3

    .line 52
    .local v1, "inEnd":I
    move v2, p5

    .line 54
    .local v2, "outPos":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 58
    .local v0, "b":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "outPos":I
    .local v4, "outPos":I
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v6, v0, 0x4

    aget-byte v5, v5, v6

    aput-byte v5, p4, v2

    .line 59
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "outPos":I
    .restart local v2    # "outPos":I
    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v6, v0, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, p4, v4

    .line 60
    .end local v0    # "b":I
    move v0, v3

    goto :goto_0

    .line 62
    .end local v3    # "inPos":I
    .local v0, "inPos":I
    :cond_0
    sub-int v3, v2, p5

    return v3
.end method

.method public getEncodedLength(I)I
    .locals 1
    .param p1, "inputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLength"
        }
    .end annotation

    .line 67
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public getMaxDecodedLength(I)I
    .locals 1
    .param p1, "inputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLength"
        }
    .end annotation

    .line 72
    div-int/lit8 v0, p1, 0x2

    return v0
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 32
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x61

    aget-byte v1, v1, v2

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x62

    aget-byte v1, v1, v2

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x63

    aget-byte v1, v1, v2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x64

    aget-byte v1, v1, v2

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x65

    aget-byte v1, v1, v2

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x66

    aget-byte v1, v1, v2

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    .line 41
    return-void
.end method

.class public Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;
.super Ljava/lang/Object;
.source "XMSSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([[B[[B)Z
    .locals 3
    .param p0, "a"    # [[B
    .param p1, "b"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 145
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 151
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const/4 v1, 0x0

    return v1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a or b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bytesToXBigEndian([BII)J
    .locals 7
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "offset",
            "size"
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_1

    .line 90
    const-wide/16 v0, 0x0

    .line 91
    .local v0, "res":J
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 93
    const/16 v3, 0x8

    shl-long v3, v0, v3

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 88
    .end local v0    # "res":J
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateTau(II)I
    .locals 3
    .param p0, "index"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "height"
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "tau":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 353
    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 355
    move v0, v1

    .line 356
    goto :goto_1

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public static cloneArray([B)[B
    .locals 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 106
    if-eqz p0, :cond_0

    .line 110
    array-length v0, p0

    new-array v0, v0, [B

    .line 111
    .local v0, "out":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-object v0

    .line 108
    .end local v0    # "out":[B
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cloneArray([[B)[[B
    .locals 6
    .param p0, "in"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 123
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    array-length v0, p0

    new-array v0, v0, [[B

    .line 128
    .local v0, "out":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 130
    aget-object v2, p0, v1

    array-length v2, v2

    new-array v2, v2, [B

    aput-object v2, v0, v1

    .line 131
    aget-object v2, p0, v1

    aget-object v3, v0, v1

    aget-object v4, p0, v1

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 125
    .end local v0    # "out":[[B
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in has null pointers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyBytesAtOffset([B[BI)V
    .locals 3
    .param p0, "dst"    # [B
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dst",
            "src",
            "offset"
        }
    .end annotation

    .line 209
    if-eqz p0, :cond_4

    .line 213
    if-eqz p1, :cond_3

    .line 217
    if-ltz p2, :cond_2

    .line 221
    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 227
    add-int v1, p2, v0

    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src length + offset must not be greater than size of destination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset hast to be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "data",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 329
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;-><init>(Ljava/lang/Class;Ljava/io/InputStream;)V

    .line 331
    .local v1, "is":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 333
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->available()I

    move-result v3

    if-nez v3, :cond_1

    .line 338
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    return-object v2

    .line 344
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "unexpected class found in ObjectInputStream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "unexpected data found at end of ObjectInputStream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static dumpByteArray([[B)V
    .locals 3
    .param p0, "x"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 174
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "x has null pointers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractBytesAtOffset([BII)[B
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "offset",
            "length"
        }
    .end annotation

    .line 241
    if-eqz p0, :cond_4

    .line 245
    if-ltz p1, :cond_3

    .line 249
    if-ltz p2, :cond_2

    .line 253
    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1

    .line 257
    new-array v0, p2, [B

    .line 258
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 260
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 255
    .end local v0    # "out":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset + length must not be greater then size of source array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length hast to be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset hast to be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDigestSize(Lorg/bouncycastle/crypto/Digest;)I
    .locals 2
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 289
    if-eqz p0, :cond_2

    .line 293
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "algorithmName":Ljava/lang/String;
    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/16 v1, 0x20

    return v1

    .line 298
    :cond_0
    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const/16 v1, 0x40

    return v1

    .line 302
    :cond_1
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    return v1

    .line 291
    .end local v0    # "algorithmName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLeafIndex(JI)I
    .locals 4
    .param p0, "index"    # J
    .param p2, "xmssTreeHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "xmssTreeHeight"
        }
    .end annotation

    .line 312
    const-wide/16 v0, 0x1

    shl-long v2, v0, p2

    sub-long/2addr v2, v0

    and-long v0, p0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static getTreeIndex(JI)J
    .locals 2
    .param p0, "index"    # J
    .param p2, "xmssTreeHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "xmssTreeHeight"
        }
    .end annotation

    .line 307
    shr-long v0, p0, p2

    return-wide v0
.end method

.method public static hasNullPointer([[B)Z
    .locals 3
    .param p0, "in"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 186
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 188
    return v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 192
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    .line 194
    return v0

    .line 190
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isIndexValid(IJ)Z
    .locals 3
    .param p0, "height"    # I
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "index"
        }
    .end annotation

    .line 274
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 278
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isNewAuthenticationPathNeeded(JII)Z
    .locals 10
    .param p0, "globalIndex"    # J
    .param p2, "xmssHeight"    # I
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "globalIndex",
            "xmssHeight",
            "layer"
        }
    .end annotation

    .line 373
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    .line 375
    return v0

    .line 377
    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    const/4 v5, 0x1

    shl-int v6, v5, p2

    int-to-double v6, v6

    int-to-double v8, p3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    rem-long/2addr v3, v6

    cmp-long v6, v3, v1

    if-nez v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isNewBDSInitNeeded(JII)Z
    .locals 8
    .param p0, "globalIndex"    # J
    .param p2, "xmssHeight"    # I
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "globalIndex",
            "xmssHeight",
            "layer"
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    .line 366
    return v0

    .line 368
    :cond_0
    const/4 v3, 0x1

    shl-int v4, v3, p2

    int-to-double v4, v4

    add-int/lit8 v6, p3, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    rem-long v4, p0, v4

    cmp-long v6, v4, v1

    if-nez v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static log2(I)I
    .locals 2
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "log":I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    move p0, v1

    if-eqz v1, :cond_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return v0
.end method

.method public static longToBigEndian(J[BI)V
    .locals 6
    .param p0, "value"    # J
    .param p2, "in"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "in",
            "offset"
        }
    .end annotation

    .line 63
    if-eqz p2, :cond_1

    .line 67
    array-length v0, p2

    sub-int/2addr v0, p3

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 71
    const/16 v0, 0x38

    shr-long v2, p0, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 72
    add-int/lit8 v0, p3, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v0

    .line 73
    add-int/lit8 v0, p3, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v0

    .line 74
    add-int/lit8 v0, p3, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v0

    .line 75
    add-int/lit8 v0, p3, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v0

    .line 76
    add-int/lit8 v0, p3, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v0

    .line 77
    add-int/lit8 v0, p3, 0x6

    shr-long v1, p0, v1

    and-long/2addr v1, v4

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 78
    add-int/lit8 v0, p3, 0x7

    and-long v1, p0, v4

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 79
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not enough space in array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 319
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 320
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 322
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static toBytesBigEndian(JI)[B
    .locals 3
    .param p0, "value"    # J
    .param p2, "sizeInByte"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "sizeInByte"
        }
    .end annotation

    .line 49
    new-array v0, p2, [B

    .line 50
    .local v0, "out":[B
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 52
    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 53
    const/16 v2, 0x8

    ushr-long/2addr p0, v2

    .line 50
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.class public abstract Lorg/bouncycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 17
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    .line 18
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 19
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 20
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "ns"
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 28
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 29
    add-int/lit8 p1, p1, 0x4

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static bigEndianToInt([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "ns",
            "nsOff",
            "nsLen"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 37
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 38
    add-int/lit8 p1, p1, 0x4

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 85
    .local v0, "hi":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 86
    .local v1, "lo":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static bigEndianToLong([BI[J)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "ns"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 93
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 94
    add-int/lit8 p1, p1, 0x8

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI[JII)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "ns"    # [J
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "bsOff",
            "ns",
            "nsOff",
            "nsLen"
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 102
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 103
    add-int/lit8 p1, p1, 0x8

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static bigEndianToShort([BI)S
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 10
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 11
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 12
    int-to-short v1, v0

    return v1
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 51
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 52
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 53
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 54
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 55
    return-void
.end method

.method public static intToBigEndian([III[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "nsOff",
            "nsLen",
            "bs",
            "bsOff"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 77
    add-int v1, p1, v0

    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 78
    add-int/lit8 p4, p4, 0x4

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "bs",
            "off"
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 68
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 69
    add-int/lit8 p2, p2, 0x4

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
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

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 45
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 46
    return-object v0
.end method

.method public static intToBigEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ns"
        }
    .end annotation

    .line 59
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 60
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 61
    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 262
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 263
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 264
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 265
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 266
    return-void
.end method

.method public static intToLittleEndian([III[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "nsOff",
            "nsLen",
            "bs",
            "bsOff"
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 288
    add-int v1, p1, v0

    aget v1, p0, v1

    invoke-static {v1, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 289
    add-int/lit8 p4, p4, 0x4

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "bs",
            "off"
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 279
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 280
    add-int/lit8 p2, p2, 0x4

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I)[B
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

    .line 255
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 256
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 257
    return-object v0
.end method

.method public static intToLittleEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ns"
        }
    .end annotation

    .line 270
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 271
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 272
    return-object v0
.end method

.method public static littleEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 170
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 171
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 172
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 173
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 174
    return v0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "ns"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 200
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 201
    add-int/lit8 p1, p1, 0x4

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "bOff"    # I
    .param p2, "ns"    # [I
    .param p3, "nOff"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "bOff",
            "ns",
            "nOff",
            "count"
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 209
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 210
    add-int/lit8 p1, p1, 0x4

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BII)[I
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "count"
        }
    .end annotation

    .line 216
    new-array v0, p2, [I

    .line 217
    .local v0, "ns":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 219
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 220
    add-int/lit8 p1, p1, 0x4

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static littleEndianToInt_High([BII)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "len"
        }
    .end annotation

    .line 179
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v0

    rsub-int/lit8 v1, p2, 0x4

    shl-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    return v0
.end method

.method public static littleEndianToInt_Low([BII)I
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "len"
        }
    .end annotation

    .line 186
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 187
    .local v0, "result":I
    const/4 v1, 0x0

    .line 188
    .local v1, "pos":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x8

    .line 191
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public static littleEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 295
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 296
    .local v0, "lo":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 297
    .local v1, "hi":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static littleEndianToLong([BI[J)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "ns"
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 304
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 305
    add-int/lit8 p1, p1, 0x8

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static littleEndianToLong([BI[JII)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "ns"    # [J
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "bsOff",
            "ns",
            "nsOff",
            "nsLen"
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 313
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 314
    add-int/lit8 p1, p1, 0x8

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static littleEndianToLong_High([BII)J
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "len"
        }
    .end annotation

    .line 337
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_Low([BII)J

    move-result-wide v0

    rsub-int/lit8 v2, p2, 0x8

    shl-int/lit8 v2, v2, 0x3

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static littleEndianToLong_Low([BII)J
    .locals 5
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "len"
        }
    .end annotation

    .line 343
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 344
    .local v0, "result":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 346
    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 347
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static littleEndianToShort([BI)S
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 163
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 164
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 165
    int-to-short v1, v0

    return v1
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 116
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    invoke-static {v1, p2, p3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 117
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v1, v0

    add-int/lit8 v0, p3, 0x4

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 118
    return-void
.end method

.method public static longToBigEndian(J[BII)V
    .locals 4
    .param p0, "value"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .param p4, "bytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "bs",
            "off",
            "bytes"
        }
    .end annotation

    .line 154
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 156
    add-int v1, v0, p3

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    .line 157
    const/16 v1, 0x8

    ushr-long/2addr p0, v1

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static longToBigEndian([JII[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "nsOff",
            "nsLen",
            "bs",
            "bsOff"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 140
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 141
    add-int/lit8 p4, p4, 0x8

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static longToBigEndian([J[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "bs",
            "off"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 131
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 132
    add-int/lit8 p2, p2, 0x8

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J)[B
    .locals 2
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 110
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 111
    return-object v0
.end method

.method public static longToBigEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ns"
        }
    .end annotation

    .line 122
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 123
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 124
    return-object v0
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 361
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v1, v0

    invoke-static {v1, p2, p3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 362
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    add-int/lit8 v0, p3, 0x4

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 363
    return-void
.end method

.method public static longToLittleEndian([JII[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "nsOff",
            "nsLen",
            "bs",
            "bsOff"
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 385
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 386
    add-int/lit8 p4, p4, 0x8

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static longToLittleEndian([J[BI)V
    .locals 3
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ns",
            "bs",
            "off"
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 376
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 377
    add-int/lit8 p2, p2, 0x8

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static longToLittleEndian(J)[B
    .locals 2
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 354
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 355
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 356
    return-object v0
.end method

.method public static longToLittleEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ns"
        }
    .end annotation

    .line 367
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 368
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 369
    return-object v0
.end method

.method public static longToLittleEndian_High(J[BII)V
    .locals 5
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off",
            "len"
        }
    .end annotation

    .line 321
    const/16 v0, 0x38

    .line 322
    .local v0, "pos":I
    ushr-long v1, p0, v0

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 323
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 325
    add-int/lit8 v0, v0, -0x8

    .line 326
    add-int v2, p3, v1

    ushr-long v3, p0, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p2, v2

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static shortToBigEndian(S[BI)V
    .locals 1
    .param p0, "n"    # S
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 248
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 249
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 250
    return-void
.end method

.method public static shortToBigEndian(S)[B
    .locals 2
    .param p0, "n"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 242
    .local v0, "r":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    .line 243
    return-object v0
.end method

.method public static shortToLittleEndian(S[BI)V
    .locals 1
    .param p0, "n"    # S
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 234
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 235
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 236
    return-void
.end method

.method public static shortToLittleEndian(S)[B
    .locals 2
    .param p0, "n"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 228
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 229
    return-object v0
.end method

.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;
.super Ljava/lang/Object;
.source "BigEndianConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static I2OSP(I[BI)V
    .locals 2
    .param p0, "input"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff"
        }
    .end annotation

    .line 81
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .local v0, "outOff":I
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 82
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p2    # "outOff":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 83
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 84
    int-to-byte p2, p0

    aput-byte p2, p1, v0

    .line 85
    return-void
.end method

.method public static I2OSP(I[BII)V
    .locals 3
    .param p0, "input"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff",
            "length"
        }
    .end annotation

    .line 141
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 143
    add-int v1, p2, v0

    add-int/lit8 v2, p3, -0x1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static I2OSP(J[BI)V
    .locals 3
    .param p0, "input"    # J
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff"
        }
    .end annotation

    .line 118
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    const/16 v1, 0x38

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 119
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 120
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 121
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 122
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 123
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 124
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 125
    long-to-int p3, p0

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    .line 126
    return-void
.end method

.method public static I2OSP(I)[B
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 31
    .local v0, "result":[B
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 32
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 33
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 34
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 35
    return-object v0
.end method

.method public static I2OSP(II)[B
    .locals 4
    .param p0, "x"    # I
    .param p1, "oLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "oLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 53
    if-gez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v0

    .line 58
    .local v0, "octL":I
    if-gt v0, p1, :cond_2

    .line 63
    new-array v1, p1, [B

    .line 64
    .local v1, "result":[B
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    sub-int v3, p1, v0

    if-lt v2, v3, :cond_1

    .line 66
    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 64
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 60
    .end local v1    # "result":[B
    :cond_2
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Cannot encode given integer into specified number of octets."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static I2OSP(J)[B
    .locals 4
    .param p0, "input"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 96
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 97
    .local v1, "output":[B
    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 98
    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 99
    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 100
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 101
    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 102
    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 103
    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 104
    long-to-int v0, p0

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 105
    return-object v1
.end method

.method public static OS2IP([B)I
    .locals 4
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 159
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 163
    array-length v0, p0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 170
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "j":I
    :cond_1
    return v0

    .line 161
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid input length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OS2IP([BI)I
    .locals 2
    .param p0, "input"    # [B
    .param p1, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff"
        }
    .end annotation

    .line 185
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    .line 186
    .local p1, "result":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .local v1, "inOff":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 187
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    .line 188
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    .line 189
    return p1
.end method

.method public static OS2IP([BII)I
    .locals 4
    .param p0, "input"    # [B
    .param p1, "inOff"    # I
    .param p2, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "inLen"
        }
    .end annotation

    .line 206
    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 213
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "j":I
    :cond_1
    return v0

    .line 208
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static OS2LIP([BI)J
    .locals 7
    .param p0, "input"    # [B
    .param p1, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff"
        }
    .end annotation

    .line 228
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 p1, 0x38

    shl-long/2addr v1, p1

    .line 229
    .local v1, "result":J
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v5, v3

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    .line 230
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x28

    shl-long/2addr v5, p1

    or-long/2addr v1, v5

    .line 231
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v5, v3

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    .line 232
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    .line 233
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 234
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    int-to-long v3, p1

    or-long/2addr v1, v3

    .line 235
    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v1, v3

    .line 236
    return-wide v1
.end method

.method public static toByteArray([I)[B
    .locals 4
    .param p0, "input"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 247
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 248
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 250
    aget v2, p0, v1

    shl-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toByteArray([II)[B
    .locals 5
    .param p0, "input"    # [I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "input",
            "length"
        }
    .end annotation

    .line 266
    array-length v0, p0

    .line 267
    .local v0, "intLen":I
    new-array v1, p1, [B

    .line 268
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 269
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x2

    if-gt v3, v4, :cond_0

    .line 271
    aget v4, p0, v3

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 273
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    sub-int v4, p1, v2

    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->I2OSP(I[BII)V

    .line 274
    return-object v1
.end method

.method public static toIntArray([B)[I
    .locals 6
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 285
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 286
    .local v0, "intLen":I
    array-length v1, p0

    and-int/lit8 v1, v1, 0x3

    .line 287
    .local v1, "lastLen":I
    new-array v2, v0, [I

    .line 289
    .local v2, "result":[I
    const/4 v3, 0x0

    .line 290
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v0, -0x2

    if-gt v4, v5, :cond_0

    .line 292
    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v2, v4

    .line 290
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 294
    .end local v4    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    .line 296
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->OS2IP([BII)I

    move-result v5

    aput v5, v2, v4

    goto :goto_1

    .line 300
    :cond_1
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v2, v4

    .line 303
    :goto_1
    return-object v2
.end method

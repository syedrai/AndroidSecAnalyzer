.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;
.super Ljava/lang/Object;
.source "LittleEndianConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static I2OSP(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "output",
            "outOff"
        }
    .end annotation

    .line 116
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .local v0, "outOff":I
    int-to-byte v1, p0

    aput-byte v1, p1, p2

    .line 117
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p2    # "outOff":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 118
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 119
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p2    # "outOff":I
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 120
    return-void
.end method

.method public static I2OSP(I[BII)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "output",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 134
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 136
    add-int v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 134
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 138
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

    .line 169
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 170
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 171
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 172
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 173
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 174
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    .line 175
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, p3

    .line 176
    const/16 p3, 0x38

    ushr-long v1, p0, p3

    long-to-int p3, v1

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    .line 177
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

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 100
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 101
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 102
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 103
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 104
    return-object v0
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

    .line 148
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 149
    .local v1, "output":[B
    long-to-int v2, p0

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 150
    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 151
    const/16 v0, 0x10

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    .line 152
    const/16 v0, 0x18

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    .line 153
    const/16 v0, 0x20

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    .line 154
    const/16 v0, 0x28

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    .line 155
    const/16 v0, 0x30

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 156
    const/16 v0, 0x38

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 157
    return-object v1
.end method

.method public static OS2IP([B)I
    .locals 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
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

    .line 44
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 45
    .local p1, "result":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .local v1, "inOff":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 46
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    .line 47
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p1, v1

    .line 48
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

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "result":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 65
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 63
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
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

    .line 80
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    .line 81
    .local v1, "result":J
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 82
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    int-to-long v3, p1

    or-long/2addr v1, v3

    .line 83
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    int-to-long v3, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    .line 84
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p1, p0, p1

    int-to-long v3, p1

    and-long/2addr v3, v5

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    .line 85
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x28

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    .line 86
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte p1, p0, p1

    int-to-long v3, p1

    and-long/2addr v3, v5

    const/16 p1, 0x30

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    .line 87
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v0, p0, v0

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    .line 88
    return-wide v1
.end method

.method public static toByteArray([II)[B
    .locals 5
    .param p0, "input"    # [I
    .param p1, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "outLen"
        }
    .end annotation

    .line 190
    array-length v0, p0

    .line 191
    .local v0, "intLen":I
    new-array v1, p1, [B

    .line 192
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 193
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x2

    if-gt v3, v4, :cond_0

    .line 195
    aget v4, p0, v3

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    .line 193
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 197
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    sub-int v4, p1, v2

    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BII)V

    .line 198
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

    .line 209
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 210
    .local v0, "intLen":I
    array-length v1, p0

    and-int/lit8 v1, v1, 0x3

    .line 211
    .local v1, "lastLen":I
    new-array v2, v0, [I

    .line 213
    .local v2, "result":[I
    const/4 v3, 0x0

    .line 214
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v0, -0x2

    if-gt v4, v5, :cond_0

    .line 216
    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v2, v4

    .line 214
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 218
    .end local v4    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    .line 220
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BII)I

    move-result v5

    aput v5, v2, v4

    goto :goto_1

    .line 224
    :cond_1
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v2, v4

    .line 227
    :goto_1
    return-object v2
.end method

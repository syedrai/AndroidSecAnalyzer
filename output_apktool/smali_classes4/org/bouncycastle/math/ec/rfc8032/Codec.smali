.class abstract Lorg/bouncycastle/math/ec/rfc8032/Codec;
.super Ljava/lang/Object;
.source "Codec.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode16([BI)I
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

    .line 7
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 8
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 9
    return v0
.end method

.method static decode24([BI)I
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

    .line 14
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 15
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 16
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 17
    return v0
.end method

.method static decode32([BI)I
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

    .line 22
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 23
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 24
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 26
    return v0
.end method

.method static decode32([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "n"    # [I
    .param p3, "nOff"    # I
    .param p4, "nLen"    # I
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
            "n",
            "nOff",
            "nLen"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 33
    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    aput v2, p2, v1

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static encode24(I[BI)V
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

    .line 39
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 40
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 41
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 42
    return-void
.end method

.method static encode32(I[BI)V
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

    .line 46
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 48
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 49
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 50
    return-void
.end method

.method static encode32([III[BI)V
    .locals 3
    .param p0, "n"    # [I
    .param p1, "nOff"    # I
    .param p2, "nLen"    # I
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
            "n",
            "nOff",
            "nLen",
            "bs",
            "bsOff"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 56
    add-int v1, p1, v0

    aget v1, p0, v1

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p4

    invoke-static {v1, p3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static encode56(J[BI)V
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

    .line 62
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    .line 63
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    add-int/lit8 v0, p3, 0x4

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode24(I[BI)V

    .line 64
    return-void
.end method

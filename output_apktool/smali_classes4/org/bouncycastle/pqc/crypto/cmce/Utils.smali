.class Lorg/bouncycastle/pqc/crypto/cmce/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitrev(SI)S
    .locals 2
    .param p0, "a"    # S
    .param p1, "GFBITS"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "GFBITS"
        }
    .end annotation

    .line 73
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short p0, v0

    .line 74
    and-int/lit16 v0, p0, 0xf0f

    shl-int/lit8 v0, v0, 0x4

    const v1, 0xf0f0

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-short p0, v0

    .line 75
    and-int/lit16 v0, p0, 0x3333

    shl-int/lit8 v0, v0, 0x2

    const v1, 0xcccc

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    int-to-short p0, v0

    .line 76
    and-int/lit16 v0, p0, 0x5555

    shl-int/lit8 v0, v0, 0x1

    const v1, 0xaaaa

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    int-to-short p0, v0

    .line 77
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 78
    shr-int/lit8 v0, p0, 0x4

    int-to-short v0, v0

    return v0

    .line 79
    :cond_0
    shr-int/lit8 v0, p0, 0x3

    int-to-short v0, v0

    return v0
.end method

.method static load4([BI)I
    .locals 1
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "offset"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method static load8([BI)J
    .locals 2
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "offset"
        }
    .end annotation

    .line 58
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static load_gf([BII)S
    .locals 1
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "gfmask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "offset",
            "gfmask"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v0

    and-int/2addr v0, p2

    int-to-short v0, v0

    return v0
.end method

.method static store8([BIJ)V
    .locals 5
    .param p0, "out"    # [B
    .param p1, "offset"    # I
    .param p2, "in"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "offset",
            "in"
        }
    .end annotation

    .line 46
    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x0

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 47
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 48
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 49
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 50
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 51
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 52
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 53
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, v0

    .line 54
    return-void
.end method

.method static store_gf([BIS)V
    .locals 2
    .param p0, "dest"    # [B
    .param p1, "offset"    # I
    .param p2, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dest",
            "offset",
            "a"
        }
    .end annotation

    .line 15
    add-int/lit8 v0, p1, 0x0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 16
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 17
    return-void
.end method

.class Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;
.super Ljava/lang/Object;
.source "FalconConversions.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private toUnsignedInt(B)I
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 70
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private toUnsignedLong(B)J
    .locals 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 75
    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method bytes_to_int([BI)I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "pos"
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "acc":I
    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    .line 24
    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    .line 25
    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    .line 26
    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 27
    return v0
.end method

.method bytes_to_int_array([BII)[I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "pos"    # I
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "pos",
            "num"
        }
    .end annotation

    .line 32
    new-array v0, p3, [I

    .line 33
    .local v0, "res":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 35
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    aput v2, v0, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method bytes_to_long([BI)J
    .locals 7
    .param p1, "src"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "pos"
        }
    .end annotation

    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .local v0, "acc":J
    add-int/lit8 v2, p2, 0x0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    .line 58
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    .line 59
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    .line 60
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    .line 61
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    .line 62
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    .line 63
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    .line 64
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    .line 65
    return-wide v0
.end method

.method int_to_bytes(I)[B
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 13
    .local v0, "res":[B
    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 14
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 15
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 16
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 17
    return-object v0
.end method

.method long_to_bytes(J)[B
    .locals 5
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 42
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 43
    .local v1, "res":[B
    const/4 v2, 0x0

    ushr-long v3, p1, v2

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 44
    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 45
    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    .line 46
    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    .line 47
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    .line 48
    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    .line 49
    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 50
    const/16 v0, 0x38

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 51
    return-object v1
.end method

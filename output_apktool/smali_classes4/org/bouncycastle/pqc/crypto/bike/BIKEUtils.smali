.class Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;
.super Ljava/lang/Object;
.source "BIKEUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static CHECK_BIT([BI)I
    .locals 3
    .param p0, "tmp"    # [B
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tmp",
            "position"
        }
    .end annotation

    .line 72
    div-int/lit8 v0, p1, 0x8

    .line 73
    .local v0, "index":I
    rem-int/lit8 v1, p1, 0x8

    .line 74
    .local v1, "pos":I
    aget-byte v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    return v2
.end method

.method protected static SET_BIT([BI)V
    .locals 8
    .param p0, "tmp"    # [B
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tmp",
            "position"
        }
    .end annotation

    .line 78
    div-int/lit8 v0, p1, 0x8

    .line 79
    .local v0, "index":I
    rem-int/lit8 v1, p1, 0x8

    .line 80
    .local v1, "pos":I
    aget-byte v2, p0, v0

    int-to-long v2, v2

    int-to-long v4, v1

    long-to-int v5, v4

    const-wide/16 v6, 0x1

    shl-long v4, v6, v5

    or-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v0

    .line 81
    return-void
.end method

.method static fromBitArrayToByteArray([B[BII)V
    .locals 8
    .param p0, "out"    # [B
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "count":I
    const/4 v1, 0x0

    .line 22
    .local v1, "pos":I
    int-to-long v2, p3

    .line 23
    .local v2, "len":J
    :goto_0
    int-to-long v4, v0

    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 25
    add-int/lit8 v4, v0, 0x8

    const/4 v5, 0x1

    if-lt v4, p3, :cond_1

    .line 27
    add-int v4, p2, v0

    aget-byte v4, p1, v4

    .line 28
    .local v4, "b":I
    sub-int v6, p3, v0

    sub-int/2addr v6, v5

    .local v6, "j":I
    :goto_1
    if-lt v6, v5, :cond_0

    .line 30
    add-int v7, p2, v0

    add-int/2addr v7, v6

    aget-byte v7, p1, v7

    shl-int/2addr v7, v6

    or-int/2addr v4, v7

    .line 28
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 32
    .end local v6    # "j":I
    :cond_0
    int-to-byte v5, v4

    aput-byte v5, p0, v1

    .line 33
    .end local v4    # "b":I
    goto :goto_3

    .line 36
    :cond_1
    add-int v4, p2, v0

    aget-byte v4, p1, v4

    .line 37
    .restart local v4    # "b":I
    const/4 v6, 0x7

    .restart local v6    # "j":I
    :goto_2
    if-lt v6, v5, :cond_2

    .line 39
    add-int v7, p2, v0

    add-int/2addr v7, v6

    aget-byte v7, p1, v7

    shl-int/2addr v7, v6

    or-int/2addr v4, v7

    .line 37
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 41
    .end local v6    # "j":I
    :cond_2
    int-to-byte v5, v4

    aput-byte v5, p0, v1

    .line 44
    .end local v4    # "b":I
    :goto_3
    add-int/lit8 v0, v0, 0x8

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_3
    return-void
.end method

.method static generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V
    .locals 8
    .param p0, "res"    # [B
    .param p1, "size"    # I
    .param p2, "weight"    # I
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Xof;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "size",
            "weight",
            "digest"
        }
    .end annotation

    .line 51
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 54
    .local v1, "buf":[B
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 56
    const/4 v3, 0x0

    invoke-interface {p3, v1, v3, v0}, Lorg/bouncycastle/crypto/Xof;->doOutput([BII)I

    .line 57
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 58
    .local v3, "temp":J
    sub-int v5, p1, v2

    int-to-long v5, v5

    mul-long v5, v5, v3

    const/16 v7, 0x20

    shr-long v3, v5, v7

    .line 59
    long-to-int v5, v3

    .line 61
    .local v5, "rand_pos":I
    add-int/2addr v5, v2

    .line 63
    invoke-static {p0, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->CHECK_BIT([BI)I

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    move v5, v2

    .line 67
    :cond_0
    invoke-static {p0, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->SET_BIT([BI)V

    .line 54
    .end local v3    # "temp":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    .end local v5    # "rand_pos":I
    :cond_1
    return-void
.end method

.method static getHammingWeight([B)I
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, "hammingWeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 13
    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    .line 11
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

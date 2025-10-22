.class final Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;
.super Ljava/lang/Object;
.source "CBD.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteTo24BitUnsignedInt([BI)J
    .locals 5
    .param p0, "x"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "offset"
        }
    .end annotation

    .line 77
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 78
    .local v0, "r":J
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 79
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 80
    return-wide v0
.end method

.method private static convertByteTo32BitUnsignedInt([BI)J
    .locals 5
    .param p0, "x"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "offset"
        }
    .end annotation

    .line 57
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 61
    .local v0, "r":J
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 62
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 63
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 64
    return-wide v0
.end method

.method public static kyberCBD(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[BI)V
    .locals 12
    .param p0, "r"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p1, "bytes"    # [B
    .param p2, "eta"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "bytes",
            "eta"
        }
    .end annotation

    .line 11
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    goto :goto_2

    .line 14
    .end local v1    # "i":I
    :pswitch_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 16
    mul-int/lit8 v2, v1, 0x3

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->convertByteTo24BitUnsignedInt([BI)J

    move-result-wide v2

    .line 17
    .local v2, "t":J
    const-wide/32 v4, 0x249249

    and-long v6, v2, v4

    .line 18
    .local v6, "d":J
    shr-long v8, v2, v0

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    .line 19
    const/4 v8, 0x2

    shr-long v8, v2, v8

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    .line 20
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 22
    mul-int/lit8 v5, v4, 0x6

    add-int/lit8 v5, v5, 0x0

    shr-long v8, v6, v5

    const-wide/16 v10, 0x7

    and-long/2addr v8, v10

    long-to-int v5, v8

    int-to-short v5, v5

    .line 23
    .local v5, "a":I
    mul-int/lit8 v8, v4, 0x6

    add-int/lit8 v8, v8, 0x3

    shr-long v8, v6, v8

    and-long/2addr v8, v10

    long-to-int v9, v8

    int-to-short v8, v9

    .line 25
    .local v8, "b":I
    mul-int/lit8 v9, v1, 0x4

    add-int/2addr v9, v4

    sub-int v10, v5, v8

    int-to-short v10, v10

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    .end local v4    # "j":I
    .end local v5    # "a":I
    .end local v8    # "b":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "i":I
    .end local v2    # "t":J
    .end local v6    # "d":J
    :cond_1
    goto :goto_4

    .line 31
    .restart local v1    # "i":I
    :goto_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    .line 33
    mul-int/lit8 v2, v1, 0x4

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->convertByteTo32BitUnsignedInt([BI)J

    move-result-wide v2

    .line 34
    .restart local v2    # "t":J
    const-wide/32 v4, 0x55555555

    and-long v6, v2, v4

    .line 35
    .restart local v6    # "d":J
    shr-long v8, v2, v0

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    .line 36
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    .line 38
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x0

    shr-long v8, v6, v5

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    long-to-int v5, v8

    int-to-short v5, v5

    .line 39
    .restart local v5    # "a":I
    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, p2

    shr-long v8, v6, v8

    and-long/2addr v8, v10

    long-to-int v9, v8

    int-to-short v8, v9

    .line 40
    .restart local v8    # "b":I
    mul-int/lit8 v9, v1, 0x8

    add-int/2addr v9, v4

    sub-int v10, v5, v8

    int-to-short v10, v10

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 31
    .end local v4    # "j":I
    .end local v5    # "a":I
    .end local v8    # "b":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    .end local v1    # "i":I
    .end local v2    # "t":J
    .end local v6    # "d":J
    :cond_3
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

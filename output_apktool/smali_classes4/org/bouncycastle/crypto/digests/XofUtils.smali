.class public Lorg/bouncycastle/crypto/digests/XofUtils;
.super Ljava/lang/Object;
.source "XofUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encode(B)[B
    .locals 3
    .param p0, "X"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "X"
        }
    .end annotation

    .line 53
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static encode([BII)[B
    .locals 2
    .param p0, "in"    # [B
    .param p1, "inOff"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 58
    array-length v0, p0

    if-ne v0, p2, :cond_0

    .line 60
    mul-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    mul-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    add-int v1, p1, p2

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static leftEncode(J)[B
    .locals 9
    .param p0, "strLen"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strLen"
        }
    .end annotation

    .line 9
    const/4 v0, 0x1

    .line 11
    .local v0, "n":B
    move-wide v1, p0

    .line 12
    .local v1, "v":J
    :goto_0
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 14
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 17
    :cond_0
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 19
    .local v4, "b":[B
    const/4 v5, 0x0

    aput-byte v0, v4, v5

    .line 21
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-gt v5, v0, :cond_1

    .line 23
    sub-int v6, v0, v5

    mul-int/lit8 v6, v6, 0x8

    shr-long v6, p0, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v4, v5

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 26
    .end local v5    # "i":I
    :cond_1
    return-object v4
.end method

.method public static rightEncode(J)[B
    .locals 9
    .param p0, "strLen"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strLen"
        }
    .end annotation

    .line 31
    const/4 v0, 0x1

    .line 33
    .local v0, "n":B
    move-wide v1, p0

    .line 34
    .local v1, "v":J
    :goto_0
    const/16 v3, 0x8

    shr-long v4, v1, v3

    move-wide v1, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 36
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 39
    :cond_0
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 41
    .local v4, "b":[B
    aput-byte v0, v4, v0

    .line 43
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 45
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    shr-long v6, p0, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v4, v5

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 48
    .end local v5    # "i":I
    :cond_1
    return-object v4
.end method

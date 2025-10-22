.class Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;
.super Ljava/lang/Object;
.source "GOST3413CipherUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LSB([BI)[B
    .locals 3
    .param p0, "from"    # [B
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "size"
        }
    .end annotation

    .line 32
    new-array v0, p1, [B

    .line 33
    .local v0, "result":[B
    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-object v0
.end method

.method public static MSB([BI)[B
    .locals 1
    .param p0, "from"    # [B
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "size"
        }
    .end annotation

    .line 19
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyFromInput([BII)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "size"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "size",
            "offset"
        }
    .end annotation

    .line 68
    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 70
    array-length v0, p0

    sub-int p1, v0, p2

    .line 73
    :cond_0
    new-array v0, p1, [B

    .line 74
    .local v0, "newIn":[B
    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-object v0
.end method

.method public static sum([B[B)[B
    .locals 4
    .param p0, "in"    # [B
    .param p1, "gamma"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "gamma"
        }
    .end annotation

    .line 48
    array-length v0, p0

    new-array v0, v0, [B

    .line 49
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 51
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

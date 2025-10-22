.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigIntUtils;
.super Ljava/lang/Object;
.source "BigIntUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static equals([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z
    .locals 5
    .param p0, "a"    # [Ljava/math/BigInteger;
    .param p1, "b"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "flag":I
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 32
    return v3

    .line 34
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 39
    aget-object v2, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    or-int/2addr v0, v2

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static fill([Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p0, "array"    # [Ljava/math/BigInteger;
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "value"
        }
    .end annotation

    .line 52
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 54
    aput-object p1, p0, v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static subArray([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "input"    # [Ljava/math/BigInteger;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "start",
            "end"
        }
    .end annotation

    .line 72
    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 73
    .local v0, "result":[Ljava/math/BigInteger;
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v0
.end method

.method public static toIntArray([Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "input"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 86
    array-length v0, p0

    new-array v0, v0, [I

    .line 87
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 89
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toIntArrayModQ(I[Ljava/math/BigInteger;)[I
    .locals 4
    .param p0, "q"    # I
    .param p1, "input"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q",
            "input"
        }
    .end annotation

    .line 106
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 107
    .local v0, "bq":Ljava/math/BigInteger;
    array-length v1, p1

    new-array v1, v1, [I

    .line 108
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 110
    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toMinimalByteArray(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 129
    .local v0, "valBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 134
    .local v1, "result":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-object v1

    .line 131
    .end local v1    # "result":[B
    :cond_1
    :goto_0
    return-object v0
.end method

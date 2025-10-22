.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static clone([C)[C
    .locals 3
    .param p0, "array"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 22
    array-length v0, p0

    new-array v0, v0, [C

    .line 23
    .local v0, "result":[C
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    return-object v0
.end method

.method public static equals([C[C)Z
    .locals 6
    .param p0, "left"    # [C
    .param p1, "right"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 86
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 88
    return v2

    .line 90
    :cond_0
    const/4 v0, 0x1

    .line 91
    .local v0, "result":Z
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 93
    aget-char v4, p0, v1

    aget-char v5, p1, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v0, v4

    .line 91
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static toByteArray([C)[B
    .locals 3
    .param p0, "chars"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chars"
        }
    .end annotation

    .line 35
    array-length v0, p0

    new-array v0, v0, [B

    .line 36
    .local v0, "result":[B
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 38
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 40
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toByteArrayForPBE([C)[B
    .locals 7
    .param p0, "chars"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chars"
        }
    .end annotation

    .line 53
    array-length v0, p0

    new-array v0, v0, [B

    .line 55
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 57
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 61
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 63
    .local v2, "ret":[B
    const/4 v3, 0x0

    .line 64
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 66
    mul-int/lit8 v3, v4, 0x2

    .line 67
    aput-byte v6, v2, v3

    .line 68
    add-int/lit8 v5, v3, 0x1

    aget-byte v6, v0, v4

    aput-byte v6, v2, v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v4    # "i":I
    :cond_1
    aput-byte v6, v2, v1

    .line 72
    add-int/lit8 v4, v1, 0x1

    aput-byte v6, v2, v4

    .line 74
    return-object v2
.end method

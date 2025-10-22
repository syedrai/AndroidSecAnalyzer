.class public Lorg/bouncycastle/crypto/params/DESedeParameters;
.super Lorg/bouncycastle/crypto/params/DESParameters;
.source "DESedeParameters.java"


# static fields
.field public static final DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    .line 16
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DESede key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isReal2Key([BI)Z
    .locals 4
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "offset"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "isValid":Z
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, 0x8

    if-eq v1, v2, :cond_1

    .line 80
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static isReal3Key([BI)Z
    .locals 8
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "offset"
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .local v0, "diff12":Z
    const/4 v1, 0x0

    .local v1, "diff13":Z
    const/4 v2, 0x0

    .line 98
    .local v2, "diff23":Z
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, p1, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    .line 100
    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x8

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v0, v4

    .line 101
    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v1, v4

    .line 102
    add-int/lit8 v4, v3, 0x8

    aget-byte v4, p0, v4

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    or-int/2addr v2, v5

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
.end method

.method public static isRealEDEKey([BI)Z
    .locals 2
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "offset"
        }
    .end annotation

    .line 66
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isWeakKey([BI)Z
    .locals 1
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "offset"
        }
    .end annotation

    .line 55
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    return v0
.end method

.method public static isWeakKey([BII)Z
    .locals 2
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "offset",
            "length"
        }
    .end annotation

    .line 34
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 36
    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

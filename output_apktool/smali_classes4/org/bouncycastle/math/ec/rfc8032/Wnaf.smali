.class abstract Lorg/bouncycastle/math/ec/rfc8032/Wnaf;
.super Ljava/lang/Object;
.source "Wnaf.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSignedVar([II[B)V
    .locals 11
    .param p0, "n"    # [I
    .param p1, "width"    # I
    .param p2, "ws"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "width",
            "ws"
        }
    .end annotation

    .line 9
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 11
    .local v0, "t":[I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    shr-int/lit8 v1, v1, 0x1f

    .local v1, "c":I
    array-length v2, p0

    .local v2, "i":I
    array-length v3, v0

    .line 12
    .local v3, "tPos":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 14
    aget v4, p0, v2

    .line 15
    .local v4, "next":I
    add-int/lit8 v3, v3, -0x1

    ushr-int/lit8 v5, v4, 0x10

    shl-int/lit8 v6, v1, 0x10

    or-int/2addr v5, v6

    aput v5, v0, v3

    .line 16
    add-int/lit8 v3, v3, -0x1

    move v1, v4

    aput v4, v0, v3

    .line 17
    .end local v4    # "next":I
    goto :goto_0

    .line 20
    .end local v1    # "c":I
    .end local v2    # "i":I
    .end local v3    # "tPos":I
    :cond_0
    rsub-int/lit8 v1, p1, 0x20

    .line 22
    .local v1, "lead":I
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    .line 23
    .local v3, "carry":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 25
    aget v5, v0, v4

    .line 26
    .local v5, "word":I
    :goto_2
    const/16 v6, 0x10

    if-ge v2, v6, :cond_2

    .line 28
    ushr-int v6, v5, v2

    .line 31
    .local v6, "word16":I
    and-int/lit8 v7, v6, 0x1

    .line 32
    .local v7, "bit":I
    if-ne v7, v3, :cond_1

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_2

    .line 38
    :cond_1
    or-int/lit8 v8, v6, 0x1

    shl-int/2addr v8, v1

    .line 39
    .local v8, "digit":I
    ushr-int/lit8 v3, v8, 0x1f

    .line 41
    shl-int/lit8 v9, v4, 0x4

    add-int/2addr v9, v2

    shr-int v10, v8, v1

    int-to-byte v10, v10

    aput-byte v10, p2, v9

    .line 43
    add-int/2addr v2, p1

    .line 44
    .end local v6    # "word16":I
    .end local v7    # "bit":I
    .end local v8    # "digit":I
    goto :goto_2

    .line 23
    .end local v5    # "word":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x10

    goto :goto_1

    .line 48
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

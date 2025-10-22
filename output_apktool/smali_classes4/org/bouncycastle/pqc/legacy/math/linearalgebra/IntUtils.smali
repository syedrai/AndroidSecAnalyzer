.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;
.super Ljava/lang/Object;
.source "IntUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 43
    array-length v0, p0

    new-array v0, v0, [I

    .line 44
    .local v0, "result":[I
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v0
.end method

.method public static equals([I[I)Z
    .locals 6
    .param p0, "left"    # [I
    .param p1, "right"    # [I
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

    .line 23
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 25
    return v2

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    .local v0, "result":Z
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 30
    aget v4, p0, v1

    aget v5, p1, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v0, v4

    .line 28
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static fill([II)V
    .locals 1
    .param p0, "array"    # [I
    .param p1, "value"    # I
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

    .line 56
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 58
    aput p1, p0, v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static partition([IIII)I
    .locals 5
    .param p0, "source"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "left",
            "right",
            "pivotIndex"
        }
    .end annotation

    .line 112
    aget v0, p0, p3

    .line 113
    .local v0, "pivot":I
    aget v1, p0, p2

    aput v1, p0, p3

    .line 114
    aput v0, p0, p2

    .line 116
    move v1, p1

    .line 118
    .local v1, "index":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 120
    aget v3, p0, v2

    if-gt v3, v0, :cond_0

    .line 122
    aget v3, p0, v1

    .line 123
    .local v3, "tmp":I
    aget v4, p0, v2

    aput v4, p0, v1

    .line 124
    aput v3, p0, v2

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 118
    .end local v3    # "tmp":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_1
    aget v2, p0, v1

    .line 130
    .local v2, "tmp":I
    aget v3, p0, p2

    aput v3, p0, v1

    .line 131
    aput v2, p0, p2

    .line 133
    return v1
.end method

.method public static quicksort([I)V
    .locals 2
    .param p0, "source"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 75
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->quicksort([III)V

    .line 76
    return-void
.end method

.method public static quicksort([III)V
    .locals 2
    .param p0, "source"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "left",
            "right"
        }
    .end annotation

    .line 88
    if-le p2, p1, :cond_0

    .line 90
    invoke-static {p0, p1, p2, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->partition([IIII)I

    move-result v0

    .line 91
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->quicksort([III)V

    .line 92
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->quicksort([III)V

    .line 94
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public static subArray([III)[I
    .locals 3
    .param p0, "input"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "start",
            "end"
        }
    .end annotation

    .line 151
    sub-int v0, p2, p1

    new-array v0, v0, [I

    .line 152
    .local v0, "result":[I
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method

.method public static toHexString([I)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 176
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigEndianConversions;->toByteArray([I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 162
    const-string v0, ""

    .line 163
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 165
    aget v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

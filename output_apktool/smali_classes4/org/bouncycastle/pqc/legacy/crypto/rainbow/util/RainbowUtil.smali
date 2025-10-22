.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;
.super Ljava/lang/Object;
.source "RainbowUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertArray([S)[B
    .locals 3
    .param p0, "in"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 116
    array-length v0, p0

    new-array v0, v0, [B

    .line 117
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 119
    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertArray([B)[S
    .locals 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 38
    array-length v0, p0

    new-array v0, v0, [S

    .line 39
    .local v0, "out":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 41
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertArray([[S)[[B
    .locals 6
    .param p0, "in"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 134
    .local v0, "out":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 136
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 138
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static convertArray([[B)[[S
    .locals 6
    .param p0, "in"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 55
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 56
    .local v0, "out":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 58
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 60
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static convertArray([[[S)[[[B
    .locals 7
    .param p0, "in"    # [[[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 153
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    .line 154
    .local v0, "out":[[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 156
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 158
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    aget-object v5, p0, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 160
    aget-object v5, v0, v2

    aget-object v5, v5, v3

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 156
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static convertArray([[[B)[[[S
    .locals 7
    .param p0, "in"    # [[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    .line 76
    .local v0, "out":[[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 78
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 80
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    aget-object v5, p0, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 82
    aget-object v5, v0, v2

    aget-object v5, v5, v3

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 78
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static convertArraytoInt([B)[I
    .locals 3
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 20
    array-length v0, p0

    new-array v0, v0, [I

    .line 21
    .local v0, "out":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 23
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertIntArray([I)[B
    .locals 3
    .param p0, "in"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 98
    array-length v0, p0

    new-array v0, v0, [B

    .line 99
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 101
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static equals([S[S)Z
    .locals 6
    .param p0, "left"    # [S
    .param p1, "right"    # [S
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

    .line 176
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 178
    return v2

    .line 180
    :cond_0
    const/4 v0, 0x1

    .line 181
    .local v0, "result":Z
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 183
    aget-short v4, p0, v1

    aget-short v5, p1, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v0, v4

    .line 181
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static equals([[S[[S)Z
    .locals 4
    .param p0, "left"    # [[S
    .param p1, "right"    # [[S
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

    .line 197
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    const/4 v0, 0x1

    .line 202
    .local v0, "result":Z
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 204
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v0, v2

    .line 202
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static equals([[[S[[[S)Z
    .locals 4
    .param p0, "left"    # [[[S
    .param p1, "right"    # [[[S
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

    .line 218
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x1

    .line 223
    .local v0, "result":Z
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 225
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v0, v2

    .line 223
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

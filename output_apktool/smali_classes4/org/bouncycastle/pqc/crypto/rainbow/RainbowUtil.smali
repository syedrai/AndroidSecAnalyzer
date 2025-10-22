.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;
.super Ljava/lang/Object;
.source "RainbowUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneArray([[S)[[S
    .locals 3
    .param p0, "toCopy"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toCopy"
        }
    .end annotation

    .line 114
    array-length v0, p0

    new-array v0, v0, [[S

    .line 115
    .local v0, "local":[[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 117
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static cloneArray([[[S)[[[S
    .locals 6
    .param p0, "toCopy"    # [[[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toCopy"
        }
    .end annotation

    .line 124
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    const-class v0, [S

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    .line 125
    .local v0, "local":[[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 127
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 129
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v5

    aput-object v5, v4, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_1
    return-object v0
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

    .line 41
    array-length v0, p0

    new-array v0, v0, [B

    .line 42
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 44
    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
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

    .line 24
    array-length v0, p0

    new-array v0, v0, [S

    .line 25
    .local v0, "out":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 27
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
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

    .line 58
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 60
    return v2

    .line 62
    :cond_0
    const/4 v0, 0x1

    .line 63
    .local v0, "result":Z
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 65
    aget-short v4, p0, v1

    aget-short v5, p1, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v0, v4

    .line 63
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 67
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

    .line 79
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    .line 84
    .local v0, "result":Z
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 86
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v0, v2

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 88
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

    .line 100
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 105
    .local v0, "result":Z
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 107
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v0, v2

    .line 105
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static generate_random(Ljava/security/SecureRandom;IIIZ)[[[S
    .locals 9
    .param p0, "sr"    # Ljava/security/SecureRandom;
    .param p1, "dim_batch"    # I
    .param p2, "dim_row"    # I
    .param p3, "dim_col"    # I
    .param p4, "triangular"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sr",
            "dim_batch",
            "dim_row",
            "dim_col",
            "triangular"
        }
    .end annotation

    .line 257
    const/4 v0, 0x2

    if-eqz p4, :cond_0

    .line 259
    add-int/lit8 v1, p2, 0x1

    mul-int v1, v1, p2

    div-int/2addr v1, v0

    mul-int v1, v1, p1

    .local v1, "bytes_needed":I
    goto :goto_0

    .line 263
    .end local v1    # "bytes_needed":I
    :cond_0
    mul-int v1, p1, p2

    mul-int v1, v1, p3

    .line 265
    .restart local v1    # "bytes_needed":I
    :goto_0
    new-array v2, v1, [B

    .line 266
    .local v2, "tmp":[B
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, "index":I
    const/4 v4, 0x3

    new-array v4, v4, [I

    aput p3, v4, v0

    const/4 v0, 0x1

    aput p2, v4, v0

    const/4 v0, 0x0

    aput p1, v4, v0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    .line 271
    .local v0, "matrix":[[[S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, p2, :cond_4

    .line 273
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, p3, :cond_3

    .line 275
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    if-ge v6, p1, :cond_2

    .line 277
    if-eqz p4, :cond_1

    if-le v4, v5, :cond_1

    .line 279
    goto :goto_4

    .line 281
    :cond_1
    aget-object v7, v0, v6

    aget-object v7, v7, v4

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v7, v5

    move v3, v8

    .line 275
    .end local v8    # "index":I
    .restart local v3    # "index":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 273
    .end local v6    # "k":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 271
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 285
    .end local v4    # "i":I
    :cond_4
    return-object v0
.end method

.method public static generate_random_2d(Ljava/security/SecureRandom;II)[[S
    .locals 6
    .param p0, "sr"    # Ljava/security/SecureRandom;
    .param p1, "dim_row"    # I
    .param p2, "dim_col"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sr",
            "dim_row",
            "dim_col"
        }
    .end annotation

    .line 238
    mul-int v0, p1, p2

    new-array v0, v0, [B

    .line 239
    .local v0, "tmp":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 241
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x0

    aput p1, v1, v2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 243
    .local v1, "matrix":[[S
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 245
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 247
    aget-object v4, v1, v3

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v2

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "j":I
    :cond_1
    return-object v1
.end method

.method public static getEncoded([[S)[B
    .locals 7
    .param p0, "a"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 290
    array-length v0, p0

    .line 291
    .local v0, "row":I
    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    .line 293
    .local v1, "col":I
    mul-int v2, v0, v1

    new-array v2, v2, [B

    .line 294
    .local v2, "ret":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 296
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 298
    mul-int v5, v3, v0

    add-int/2addr v5, v4

    aget-object v6, p0, v4

    aget-short v6, v6, v3

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "j":I
    :cond_1
    return-object v2
.end method

.method public static getEncoded([[[SZ)[B
    .locals 10
    .param p0, "a"    # [[[S
    .param p1, "triangular"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "triangular"
        }
    .end annotation

    .line 306
    array-length v0, p0

    .line 307
    .local v0, "dim":I
    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    .line 308
    .local v2, "row":I
    aget-object v3, p0, v1

    aget-object v1, v3, v1

    array-length v1, v1

    .line 311
    .local v1, "col":I
    if-eqz p1, :cond_0

    .line 313
    add-int/lit8 v3, v2, 0x1

    mul-int v3, v3, v2

    div-int/lit8 v3, v3, 0x2

    mul-int v3, v3, v0

    .local v3, "ret_size":I
    goto :goto_0

    .line 317
    .end local v3    # "ret_size":I
    :cond_0
    mul-int v3, v0, v2

    mul-int v3, v3, v1

    .line 319
    .restart local v3    # "ret_size":I
    :goto_0
    new-array v4, v3, [B

    .line 320
    .local v4, "ret":[B
    const/4 v5, 0x0

    .line 322
    .local v5, "cnt":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 324
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v1, :cond_3

    .line 326
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    if-ge v8, v0, :cond_2

    .line 328
    if-eqz p1, :cond_1

    if-le v6, v7, :cond_1

    .line 330
    goto :goto_4

    .line 332
    :cond_1
    aget-object v9, p0, v8

    aget-object v9, v9, v6

    aget-short v9, v9, v7

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 326
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 324
    .end local v8    # "k":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 322
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 337
    .end local v6    # "i":I
    :cond_4
    return-object v4
.end method

.method public static hash(Lorg/bouncycastle/crypto/Digest;[BI)[B
    .locals 7
    .param p0, "hashAlgo"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "msg"    # [B
    .param p2, "hash_length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashAlgo",
            "msg",
            "hash_length"
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 193
    .local v0, "digest_size":I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 194
    new-array v1, v0, [B

    .line 195
    .local v1, "hash":[B
    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 198
    if-ne p2, v0, :cond_0

    .line 200
    return-object v1

    .line 202
    :cond_0
    if-ge p2, v0, :cond_1

    .line 204
    invoke-static {v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2

    .line 208
    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 212
    .local v3, "final_hash":[B
    sub-int v4, p2, v0

    .line 213
    .local v4, "left_to_hash":I
    :goto_0
    if-lt v4, v0, :cond_2

    .line 215
    invoke-interface {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 216
    new-array v1, v0, [B

    .line 217
    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 218
    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    .line 219
    sub-int/2addr v4, v0

    goto :goto_0

    .line 223
    :cond_2
    if-lez v4, :cond_3

    .line 225
    invoke-interface {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 226
    new-array v1, v0, [B

    .line 227
    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 228
    array-length v5, v3

    .line 229
    .local v5, "current_length":I
    add-int v6, v5, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 230
    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    .end local v5    # "current_length":I
    :cond_3
    return-object v3
.end method

.method public static hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B
    .locals 6
    .param p0, "hashAlgo"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "partA"    # [B
    .param p2, "partB"    # [B
    .param p3, "result"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashAlgo",
            "partA",
            "partB",
            "result"
        }
    .end annotation

    .line 137
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 142
    .local v0, "digest_size":I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 143
    array-length v1, p2

    invoke-interface {p0, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 145
    array-length v1, p3

    if-ne v1, v0, :cond_0

    .line 147
    invoke-interface {p0, p3, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 148
    return-object p3

    .line 151
    :cond_0
    new-array v1, v0, [B

    .line 153
    .local v1, "hash":[B
    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 155
    array-length v3, p3

    if-ge v3, v0, :cond_1

    .line 157
    array-length v3, p3

    invoke-static {v1, v2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return-object p3

    .line 161
    :cond_1
    array-length v3, v1

    invoke-static {v1, v2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v3, p3

    sub-int/2addr v3, v0

    .line 165
    .local v3, "left_to_hash":I
    move v4, v0

    .line 166
    .local v4, "index":I
    :goto_0
    array-length v5, v1

    if-lt v3, v5, :cond_2

    .line 168
    array-length v5, v1

    invoke-interface {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 169
    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 170
    array-length v5, v1

    invoke-static {v1, v2, p3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    array-length v5, v1

    sub-int/2addr v3, v5

    .line 172
    array-length v5, v1

    add-int/2addr v4, v5

    goto :goto_0

    .line 176
    :cond_2
    if-lez v3, :cond_3

    .line 178
    array-length v5, v1

    invoke-interface {p0, v1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 179
    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 180
    invoke-static {v1, v2, p3, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_3
    return-object p3
.end method

.method public static loadEncoded([[S[BI)I
    .locals 6
    .param p0, "a"    # [[S
    .param p1, "enc"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "enc",
            "off"
        }
    .end annotation

    .line 342
    array-length v0, p0

    .line 343
    .local v0, "row":I
    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    .line 345
    .local v1, "col":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 347
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 349
    aget-object v4, p0, v3

    mul-int v5, v2, v0

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v2

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "j":I
    :cond_1
    mul-int v2, v0, v1

    return v2
.end method

.method public static loadEncoded([[[S[BIZ)I
    .locals 9
    .param p0, "a"    # [[[S
    .param p1, "enc"    # [B
    .param p2, "off"    # I
    .param p3, "triangular"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "enc",
            "off",
            "triangular"
        }
    .end annotation

    .line 357
    array-length v0, p0

    .line 358
    .local v0, "dim":I
    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    .line 359
    .local v2, "row":I
    aget-object v3, p0, v1

    aget-object v1, v3, v1

    array-length v1, v1

    .line 361
    .local v1, "col":I
    const/4 v3, 0x0

    .line 363
    .local v3, "cnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 365
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 367
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    if-ge v6, v0, :cond_1

    .line 369
    if-eqz p3, :cond_0

    if-le v4, v5, :cond_0

    .line 371
    goto :goto_3

    .line 373
    :cond_0
    aget-object v7, p0, v6

    aget-object v7, v7, v4

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "cnt":I
    .local v8, "cnt":I
    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v7, v5

    move v3, v8

    .line 367
    .end local v8    # "cnt":I
    .restart local v3    # "cnt":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 365
    .end local v6    # "k":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 363
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 377
    .end local v4    # "i":I
    :cond_3
    return v3
.end method

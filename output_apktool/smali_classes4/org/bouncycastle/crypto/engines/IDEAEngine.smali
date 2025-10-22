.class public Lorg/bouncycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;
.source "IDEAEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BASE:I = 0x10001

.field protected static final BLOCK_SIZE:I = 0x8

.field private static final MASK:I = 0xffff


# instance fields
.field private forEncryption:Z

.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 36
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 37
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 112
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private expandKey([B)[I
    .locals 6
    .param p1, "uKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uKey"
        }
    .end annotation

    .line 215
    const/16 v0, 0x34

    new-array v1, v0, [I

    .line 217
    .local v1, "key":[I
    array-length v2, p1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 219
    new-array v2, v3, [B

    .line 221
    .local v2, "tmp":[B
    array-length v3, v2

    array-length v4, p1

    sub-int/2addr v3, v4

    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    move-object p1, v2

    .line 226
    .end local v2    # "tmp":[B
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 228
    mul-int/lit8 v3, v2, 0x2

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v3

    aput v3, v1, v2

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x8

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 233
    and-int/lit8 v3, v2, 0x7

    const v4, 0xffff

    const/4 v5, 0x6

    if-ge v3, v5, :cond_2

    .line 235
    add-int/lit8 v3, v2, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v5, v2, -0x6

    aget v5, v1, v5

    shr-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    and-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_2

    .line 237
    :cond_2
    and-int/lit8 v3, v2, 0x7

    if-ne v3, v5, :cond_3

    .line 239
    add-int/lit8 v3, v2, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v5, v2, -0xe

    aget v5, v1, v5

    shr-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    and-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_2

    .line 243
    :cond_3
    add-int/lit8 v3, v2, -0xf

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v5, v2, -0xe

    aget v5, v1, v5

    shr-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 231
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "userKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "userKey"
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_0

    .line 359
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->invertKey([I)[I

    move-result-object v0

    return-object v0
.end method

.method private ideaFunc([I[BI[BI)V
    .locals 16
    .param p1, "workingKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workingKey",
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    .line 167
    .local v5, "keyOff":I
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v6

    .line 168
    .local v6, "x0":I
    add-int/lit8 v7, v2, 0x2

    invoke-direct {v0, v1, v7}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v7

    .line 169
    .local v7, "x1":I
    add-int/lit8 v8, v2, 0x4

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v8

    .line 170
    .local v8, "x2":I
    add-int/lit8 v9, v2, 0x6

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v9

    .line 172
    .local v9, "x3":I
    const/4 v10, 0x0

    .local v10, "round":I
    :goto_0
    const/16 v11, 0x8

    if-ge v10, v11, :cond_0

    .line 174
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "keyOff":I
    .local v11, "keyOff":I
    aget v5, p1, v5

    invoke-direct {v0, v6, v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v5

    .line 175
    .end local v6    # "x0":I
    .local v5, "x0":I
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "keyOff":I
    .local v6, "keyOff":I
    aget v11, p1, v11

    add-int/2addr v7, v11

    .line 176
    const v11, 0xffff

    and-int/2addr v7, v11

    .line 177
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "keyOff":I
    .local v12, "keyOff":I
    aget v6, p1, v6

    add-int/2addr v8, v6

    .line 178
    and-int v6, v8, v11

    .line 179
    .end local v8    # "x2":I
    .local v6, "x2":I
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "keyOff":I
    .local v8, "keyOff":I
    aget v12, p1, v12

    invoke-direct {v0, v9, v12}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v9

    .line 181
    move v12, v7

    .line 182
    .local v12, "t0":I
    move v13, v6

    .line 183
    .local v13, "t1":I
    xor-int/2addr v6, v5

    .line 184
    xor-int/2addr v7, v9

    .line 186
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "keyOff":I
    .local v14, "keyOff":I
    aget v8, p1, v8

    invoke-direct {v0, v6, v8}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v6

    .line 187
    add-int/2addr v7, v6

    .line 188
    and-int/2addr v7, v11

    .line 190
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "keyOff":I
    .restart local v8    # "keyOff":I
    aget v14, p1, v14

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v7

    .line 191
    add-int/2addr v6, v7

    .line 192
    and-int/2addr v6, v11

    .line 194
    xor-int/2addr v5, v7

    .line 195
    xor-int/2addr v9, v6

    .line 196
    xor-int/2addr v7, v13

    .line 197
    xor-int/2addr v6, v12

    .line 172
    add-int/lit8 v10, v10, 0x1

    move v15, v6

    move v6, v5

    move v5, v8

    move v8, v15

    goto :goto_0

    .line 200
    .end local v10    # "round":I
    .end local v12    # "t0":I
    .end local v13    # "t1":I
    .local v5, "keyOff":I
    .local v6, "x0":I
    .local v8, "x2":I
    :cond_0
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "keyOff":I
    .local v10, "keyOff":I
    aget v5, p1, v5

    invoke-direct {v0, v6, v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v5

    invoke-direct {v0, v5, v3, v4}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 201
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "keyOff":I
    .restart local v5    # "keyOff":I
    aget v10, p1, v10

    add-int/2addr v10, v8

    add-int/lit8 v11, v4, 0x2

    invoke-direct {v0, v10, v3, v11}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 202
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "keyOff":I
    .restart local v10    # "keyOff":I
    aget v5, p1, v5

    add-int/2addr v5, v7

    add-int/lit8 v11, v4, 0x4

    invoke-direct {v0, v5, v3, v11}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 203
    aget v5, p1, v10

    invoke-direct {v0, v9, v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v5

    add-int/lit8 v11, v4, 0x6

    invoke-direct {v0, v5, v3, v11}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 204
    return-void
.end method

.method private invertKey([I)[I
    .locals 9
    .param p1, "inKey"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inKey"
        }
    .end annotation

    .line 306
    const/16 v0, 0x34

    .line 307
    .local v0, "p":I
    const/16 v1, 0x34

    new-array v1, v1, [I

    .line 308
    .local v1, "key":[I
    const/4 v2, 0x0

    .line 310
    .local v2, "inOff":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inOff":I
    .local v3, "inOff":I
    aget v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v2

    .line 311
    .local v2, "t1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inOff":I
    .local v4, "inOff":I
    aget v3, p1, v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v3

    .line 312
    .local v3, "t2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inOff":I
    .local v5, "inOff":I
    aget v4, p1, v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v4

    .line 313
    .local v4, "t3":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inOff":I
    .local v6, "inOff":I
    aget v5, p1, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 314
    .local v5, "t4":I
    add-int/lit8 v0, v0, -0x1

    aput v5, v1, v0

    .line 315
    add-int/lit8 v0, v0, -0x1

    aput v4, v1, v0

    .line 316
    add-int/lit8 v0, v0, -0x1

    aput v3, v1, v0

    .line 317
    add-int/lit8 v0, v0, -0x1

    aput v2, v1, v0

    .line 319
    const/4 v7, 0x1

    .local v7, "round":I
    :goto_0
    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    .line 321
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "inOff":I
    .local v8, "inOff":I
    aget v2, p1, v6

    .line 322
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "inOff":I
    .restart local v6    # "inOff":I
    aget v3, p1, v8

    .line 323
    add-int/lit8 v0, v0, -0x1

    aput v3, v1, v0

    .line 324
    add-int/lit8 v0, v0, -0x1

    aput v2, v1, v0

    .line 326
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "inOff":I
    .restart local v8    # "inOff":I
    aget v6, p1, v6

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v2

    .line 327
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "inOff":I
    .restart local v6    # "inOff":I
    aget v8, p1, v8

    invoke-virtual {p0, v8}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v3

    .line 328
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "inOff":I
    .restart local v8    # "inOff":I
    aget v6, p1, v6

    invoke-virtual {p0, v6}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v4

    .line 329
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "inOff":I
    .restart local v6    # "inOff":I
    aget v8, p1, v8

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 330
    add-int/lit8 v0, v0, -0x1

    aput v5, v1, v0

    .line 331
    add-int/lit8 v0, v0, -0x1

    aput v3, v1, v0

    .line 332
    add-int/lit8 v0, v0, -0x1

    aput v4, v1, v0

    .line 333
    add-int/lit8 v0, v0, -0x1

    aput v2, v1, v0

    .line 319
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 336
    .end local v7    # "round":I
    :cond_0
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inOff":I
    .local v7, "inOff":I
    aget v2, p1, v6

    .line 337
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "inOff":I
    .restart local v6    # "inOff":I
    aget v3, p1, v7

    .line 338
    add-int/lit8 v0, v0, -0x1

    aput v3, v1, v0

    .line 339
    add-int/lit8 v0, v0, -0x1

    aput v2, v1, v0

    .line 341
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inOff":I
    .restart local v7    # "inOff":I
    aget v6, p1, v6

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v2

    .line 342
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "inOff":I
    .restart local v6    # "inOff":I
    aget v7, p1, v7

    invoke-virtual {p0, v7}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v3

    .line 343
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inOff":I
    .restart local v7    # "inOff":I
    aget v6, p1, v6

    invoke-virtual {p0, v6}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v4

    .line 344
    aget v6, p1, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 345
    add-int/lit8 v0, v0, -0x1

    aput v5, v1, v0

    .line 346
    add-int/lit8 v0, v0, -0x1

    aput v4, v1, v0

    .line 347
    add-int/lit8 v0, v0, -0x1

    aput v3, v1, v0

    .line 348
    add-int/lit8 v0, v0, -0x1

    aput v2, v1, v0

    .line 350
    return-object v1
.end method

.method private mul(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 137
    const v0, 0xffff

    const v1, 0x10001

    if-nez p1, :cond_0

    .line 139
    sub-int/2addr v1, p2

    .end local p1    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 141
    .end local v1    # "x":I
    .restart local p1    # "x":I
    :cond_0
    if-nez p2, :cond_1

    .line 143
    sub-int/2addr v1, p1

    .end local p1    # "x":I
    .restart local v1    # "x":I
    goto :goto_1

    .line 147
    .end local v1    # "x":I
    .restart local p1    # "x":I
    :cond_1
    mul-int v1, p1, p2

    .line 149
    .local v1, "p":I
    and-int p2, v1, v0

    .line 150
    ushr-int/lit8 p1, v1, 0x10

    .line 151
    sub-int v2, p2, p1

    if-ge p2, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-int p1, v2, v3

    move v1, p1

    .line 154
    .end local p1    # "x":I
    .local v1, "x":I
    :goto_1
    and-int p1, v1, v0

    return p1
.end method

.method private mulInv(I)I
    .locals 7
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 261
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 263
    return p1

    .line 266
    :cond_0
    const/4 v0, 0x1

    .line 267
    .local v0, "t0":I
    const v1, 0x10001

    div-int v2, v1, p1

    .line 268
    .local v2, "t1":I
    rem-int/2addr v1, p1

    .line 270
    .local v1, "y":I
    :goto_0
    const v3, 0xffff

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    .line 272
    div-int v5, p1, v1

    .line 273
    .local v5, "q":I
    rem-int/2addr p1, v1

    .line 274
    mul-int v6, v2, v5

    add-int/2addr v6, v0

    and-int v0, v6, v3

    .line 275
    if-ne p1, v4, :cond_1

    .line 277
    return v0

    .line 279
    :cond_1
    div-int v4, v1, p1

    .line 280
    .end local v5    # "q":I
    .local v4, "q":I
    rem-int/2addr v1, p1

    .line 281
    mul-int v5, v0, v4

    add-int/2addr v5, v2

    and-int v2, v5, v3

    goto :goto_0

    .line 284
    .end local v4    # "q":I
    :cond_2
    rsub-int/lit8 v4, v2, 0x1

    and-int/2addr v3, v4

    return v3
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "word",
            "out",
            "outOff"
        }
    .end annotation

    .line 120
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 121
    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 122
    return-void
.end method


# virtual methods
.method addInv(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 295
    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "IDEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 72
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .line 51
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 54
    .local v0, "key":[B
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->generateWorkingKey(Z[B)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 56
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->forEncryption:Z

    .line 58
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 59
    return-void

    .line 62
    .end local v0    # "key":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to IDEA init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    if-eqz v0, :cond_2

    .line 86
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 91
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_0

    .line 96
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v4, "in":[B
    .local v5, "inOff":I
    .local v6, "out":[B
    .local v7, "outOff":I
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->ideaFunc([I[BI[BI)V

    .line 98
    const/16 p1, 0x8

    return p1

    .line 93
    .end local v4    # "in":[B
    .end local v5    # "inOff":I
    .end local v6    # "out":[B
    .end local v7    # "outOff":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_0
    move-object v4, p1

    move v5, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v4    # "in":[B
    .restart local v5    # "inOff":I
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    .end local v4    # "in":[B
    .end local v5    # "inOff":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    :cond_1
    move-object v4, p1

    move v5, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v4    # "in":[B
    .restart local v5    # "inOff":I
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    .end local v4    # "in":[B
    .end local v5    # "inOff":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    :cond_2
    move-object v4, p1

    move v5, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v4    # "in":[B
    .restart local v5    # "inOff":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "IDEA engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    .line 103
    return-void
.end method

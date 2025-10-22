.class Lorg/bouncycastle/crypto/fpe/SP80038G;
.super Ljava/lang/Object;
.source "SP80038G.java"


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field static final FF1_DISABLED:Ljava/lang/String; = "org.bouncycastle.fpe.disable_ff1"

.field static final FPE_DISABLED:Ljava/lang/String; = "org.bouncycastle.fpe.disable"

.field protected static final LOG2:D

.field protected static final TWO_TO_96:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sput-wide v2, Lorg/bouncycastle/crypto/fpe/SP80038G;->LOG2:D

    .line 30
    const-wide/high16 v2, 0x4058000000000000L    # 96.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/crypto/fpe/SP80038G;->TWO_TO_96:D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static calculateB_FF1(II)I
    .locals 5
    .param p0, "radix"    # I
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radix",
            "v"
        }
    .end annotation

    .line 265
    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v0

    .line 266
    .local v0, "powersOfTwo":I
    mul-int v1, v0, p1

    .line 268
    .local v1, "bits":I
    ushr-int v2, p0, v0

    .line 269
    .local v2, "oddPart":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 275
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 278
    :cond_0
    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v3, v3, 0x8

    return v3
.end method

.method protected static calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "bigRadix"    # Ljava/math/BigInteger;
    .param p1, "u"    # I
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bigRadix",
            "u",
            "v"
        }
    .end annotation

    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 284
    .local v0, "modUV":[Ljava/math/BigInteger;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 285
    aget-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 286
    if-eq p2, p1, :cond_0

    .line 288
    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v2

    .line 290
    :cond_0
    return-object v0
.end method

.method protected static calculateP_FF1(IBII)[B
    .locals 4
    .param p0, "radix"    # I
    .param p1, "uLow"    # B
    .param p2, "n"    # I
    .param p3, "t"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "radix",
            "uLow",
            "n",
            "t"
        }
    .end annotation

    .line 295
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 296
    .local v0, "P":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 297
    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 298
    aput-byte v2, v0, v3

    .line 301
    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 302
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 303
    const/4 v1, 0x5

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 305
    const/4 v1, 0x6

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 306
    const/4 v1, 0x7

    aput-byte p1, v0, v1

    .line 307
    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 308
    const/16 v1, 0xc

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 309
    return-object v0
.end method

.method protected static calculateTweak64_FF3_1([B)[B
    .locals 5
    .param p0, "tweak56"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tweak56"
        }
    .end annotation

    .line 314
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 315
    .local v0, "tweak64":[B
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 316
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 317
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 318
    const/4 v1, 0x3

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 319
    const/4 v2, 0x4

    aget-byte v3, p0, v2

    aput-byte v3, v0, v2

    .line 320
    const/4 v3, 0x5

    aget-byte v4, p0, v3

    aput-byte v4, v0, v3

    .line 321
    const/4 v3, 0x6

    aget-byte v4, p0, v3

    aput-byte v4, v0, v3

    .line 322
    aget-byte v1, p0, v1

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 324
    return-object v0
.end method

.method protected static calculateY_FF1(Lorg/bouncycastle/crypto/BlockCipher;[BIII[B[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;
    .locals 20
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "T"    # [B
    .param p2, "b"    # I
    .param p3, "d"    # I
    .param p4, "round"    # I
    .param p5, "P"    # [B
    .param p6, "AB"    # [S
    .param p7, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "T",
            "b",
            "d",
            "round",
            "P",
            "AB",
            "radixConverter"
        }
    .end annotation

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v1

    .line 333
    .local v3, "t":I
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual {v5, v4}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v6

    .line 334
    .local v6, "numAB":Ljava/math/BigInteger;
    invoke-static {v6}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v7

    .line 336
    .local v7, "bytesAB":[B
    add-int v8, v3, p2

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    and-int/lit8 v8, v8, 0xf

    .line 337
    .local v8, "zeroes":I
    add-int v9, v3, v8

    add-int/lit8 v9, v9, 0x1

    add-int v9, v9, p2

    new-array v9, v9, [B

    .line 338
    .local v9, "Q":[B
    const/4 v10, 0x0

    invoke-static {v1, v10, v9, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int v11, v3, v8

    move/from16 v12, p4

    int-to-byte v13, v12

    aput-byte v13, v9, v11

    .line 340
    array-length v11, v9

    array-length v13, v7

    sub-int/2addr v11, v13

    array-length v13, v7

    invoke-static {v7, v10, v9, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    move-object/from16 v11, p5

    invoke-static {v11, v9}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v13

    invoke-static {v0, v13}, Lorg/bouncycastle/crypto/fpe/SP80038G;->prf(Lorg/bouncycastle/crypto/BlockCipher;[B)[B

    move-result-object v13

    .line 346
    .local v13, "R":[B
    move-object v14, v13

    .line 347
    .local v14, "sBlocks":[B
    const/16 v15, 0x10

    if-le v2, v15, :cond_1

    .line 349
    add-int/lit8 v16, v2, 0x10

    add-int/lit8 v16, v16, -0x1

    div-int/lit8 v10, v16, 0x10

    .line 350
    .local v10, "sBlocksLen":I
    mul-int/lit8 v15, v10, 0x10

    new-array v14, v15, [B

    .line 352
    const/16 v15, 0xc

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v17

    .line 353
    .local v17, "j0":I
    const/16 v1, 0x10

    const/4 v15, 0x0

    invoke-static {v13, v15, v14, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 357
    move/from16 v16, v1

    .end local v1    # "j":I
    .local v16, "j":I
    mul-int/lit8 v1, v16, 0x10

    .line 359
    .local v1, "sOff":I
    move/from16 v19, v3

    const/16 v3, 0xc

    .end local v3    # "t":I
    .local v19, "t":I
    invoke-static {v13, v15, v14, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    xor-int v15, v17, v16

    add-int/lit8 v18, v1, 0x10

    add-int/lit8 v3, v18, -0x4

    invoke-static {v15, v14, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 362
    invoke-interface {v0, v14, v1, v14, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 355
    .end local v1    # "sOff":I
    add-int/lit8 v1, v16, 0x1

    move/from16 v3, v19

    const/4 v15, 0x0

    .end local v16    # "j":I
    .local v1, "j":I
    goto :goto_0

    .end local v19    # "t":I
    .restart local v3    # "t":I
    :cond_0
    move/from16 v16, v1

    move/from16 v19, v3

    .end local v1    # "j":I
    .end local v3    # "t":I
    .restart local v16    # "j":I
    .restart local v19    # "t":I
    goto :goto_1

    .line 347
    .end local v10    # "sBlocksLen":I
    .end local v16    # "j":I
    .end local v17    # "j0":I
    .end local v19    # "t":I
    .restart local v3    # "t":I
    :cond_1
    move/from16 v19, v3

    .line 367
    .end local v3    # "t":I
    .restart local v19    # "t":I
    :goto_1
    const/4 v15, 0x0

    invoke-static {v14, v15, v2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->num([BII)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method protected static calculateY_FF3(Lorg/bouncycastle/crypto/BlockCipher;[BII[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "T"    # [B
    .param p2, "wOff"    # I
    .param p3, "round"    # I
    .param p4, "AB"    # [S
    .param p5, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "T",
            "wOff",
            "round",
            "AB",
            "radixConverter"
        }
    .end annotation

    .line 373
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 374
    .local v0, "P":[B
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v1, p3

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 376
    invoke-virtual {p5, p4}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v1

    .line 377
    .local v1, "numAB":Ljava/math/BigInteger;
    const/4 v3, 0x4

    const/16 v4, 0xc

    invoke-static {v1, v0, v3, v4}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;[BII)V

    .line 380
    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    .line 381
    invoke-interface {p0, v0, v2, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 382
    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    .line 383
    move-object v3, v0

    .line 386
    .local v3, "S":[B
    array-length v4, v3

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->num([BII)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method protected static checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V
    .locals 1
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "isFF1"    # Z
    .param p2, "radix"    # I
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "isFF1",
            "radix",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 401
    invoke-static {p0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkCipher(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 402
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/16 v0, 0x100

    if-gt p2, v0, :cond_0

    .line 406
    invoke-static {p1, p2, p3, p4, p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkData(ZI[BII)V

    .line 407
    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected static checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V
    .locals 1
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "isFF1"    # Z
    .param p2, "radix"    # I
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "isFF1",
            "radix",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 391
    invoke-static {p0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkCipher(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 392
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/high16 v0, 0x10000

    if-gt p2, v0, :cond_0

    .line 396
    invoke-static {p1, p2, p3, p4, p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkData(ZI[SII)V

    .line 397
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected static checkCipher(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 411
    const/16 v0, 0x10

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 415
    return-void

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected static checkData(ZI[BII)V
    .locals 4
    .param p0, "isFF1"    # Z
    .param p1, "radix"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isFF1",
            "radix",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 432
    invoke-static {p0, p1, p4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkLength(ZII)V

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 435
    add-int v1, p3, v0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 436
    .local v1, "b":I
    if-ge v1, p1, :cond_0

    .line 433
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .restart local v1    # "b":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data outside of radix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    .end local v0    # "i":I
    .end local v1    # "b":I
    :cond_1
    return-void
.end method

.method protected static checkData(ZI[SII)V
    .locals 4
    .param p0, "isFF1"    # Z
    .param p1, "radix"    # I
    .param p2, "buf"    # [S
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isFF1",
            "radix",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 419
    invoke-static {p0, p1, p4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkLength(ZII)V

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 422
    add-int v1, p3, v0

    aget-short v1, p2, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 423
    .local v1, "b":I
    if-ge v1, p1, :cond_0

    .line 420
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .restart local v1    # "b":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data outside of radix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    .end local v0    # "i":I
    .end local v1    # "b":I
    :cond_1
    return-void
.end method

.method private static checkLength(ZII)V
    .locals 6
    .param p0, "isFF1"    # Z
    .param p1, "radix"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isFF1",
            "radix",
            "len"
        }
    .end annotation

    .line 445
    const/4 v0, 0x2

    if-lt p2, v0, :cond_2

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 449
    if-nez p0, :cond_1

    .line 451
    sget-wide v1, Lorg/bouncycastle/crypto/fpe/SP80038G;->TWO_TO_96:D

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 452
    .local v1, "maxLen":I
    if-gt p2, v1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximum input length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    .end local v1    # "maxLen":I
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static decFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 17
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "T"    # [B
    .param p3, "n"    # I
    .param p4, "u"    # I
    .param p5, "v"    # I
    .param p6, "A"    # [S
    .param p7, "B"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "T",
            "n",
            "u",
            "v",
            "A",
            "B"
        }
    .end annotation

    .line 67
    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v11

    .line 68
    .local v11, "radix":I
    move-object/from16 v1, p2

    array-length v12, v1

    .line 69
    .local v12, "t":I
    invoke-static {v11, v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateB_FF1(II)I

    move-result v2

    .line 70
    .local v2, "b":I
    add-int/lit8 v0, v2, 0x7

    and-int/lit8 v3, v0, -0x4

    .line 72
    .local v3, "d":I
    int-to-byte v0, v9

    invoke-static {v11, v0, v8, v12}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateP_FF1(IBII)[B

    move-result-object v5

    .line 74
    .local v5, "P":[B
    int-to-long v6, v11

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 75
    .local v13, "bigRadix":Ljava/math/BigInteger;
    invoke-static {v13, v9, v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v14

    .line 77
    .local v14, "modUV":[Ljava/math/BigInteger;
    move/from16 v0, p4

    .line 79
    .local v0, "m":I
    const/16 v4, 0x9

    move-object/from16 v6, p6

    move-object/from16 v15, p7

    move/from16 v16, v0

    .end local v0    # "m":I
    .end local p6    # "A":[S
    .end local p7    # "B":[S
    .local v4, "i":I
    .local v6, "A":[S
    .local v15, "B":[S
    .local v16, "m":I
    :goto_0
    if-ltz v4, :cond_0

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF1(Lorg/bouncycastle/crypto/BlockCipher;[BIII[B[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v8

    .line 85
    .local v8, "y":Ljava/math/BigInteger;
    sub-int v0, p3, v16

    .line 86
    .end local v16    # "m":I
    .restart local v0    # "m":I
    and-int/lit8 v1, v4, 0x1

    aget-object v1, v14, v1

    .line 89
    .local v1, "modulus":Ljava/math/BigInteger;
    move/from16 p6, v2

    .end local v2    # "b":I
    .local p6, "b":I
    invoke-virtual {v7, v15}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 92
    .local v2, "c":Ljava/math/BigInteger;
    move-object/from16 p7, v15

    .line 93
    .local p7, "C":[S
    move-object v15, v6

    .line 94
    move-object/from16 v6, p7

    .line 95
    move-object/from16 v16, v1

    move-object/from16 v1, p7

    .end local p7    # "C":[S
    .local v1, "C":[S
    .local v16, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v7, v2, v0, v1}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    .line 79
    .end local v1    # "C":[S
    .end local v2    # "c":Ljava/math/BigInteger;
    .end local v8    # "y":Ljava/math/BigInteger;
    .end local v16    # "modulus":Ljava/math/BigInteger;
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, p2

    move/from16 v8, p3

    move/from16 v2, p6

    move/from16 v16, v0

    goto :goto_0

    .line 98
    .end local v0    # "m":I
    .end local v4    # "i":I
    .end local p6    # "b":I
    .local v2, "b":I
    .local v16, "m":I
    :cond_0
    invoke-static {v6, v15}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v0

    return-object v0
.end method

.method private static decFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 14
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "T"    # [B
    .param p3, "n"    # I
    .param p4, "v"    # I
    .param p5, "u"    # I
    .param p6, "A"    # [S
    .param p7, "B"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "T",
            "n",
            "v",
            "u",
            "A",
            "B"
        }
    .end annotation

    .line 492
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 493
    .local v0, "bigRadix":Ljava/math/BigInteger;
    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v3

    .line 495
    .local v3, "modVU":[Ljava/math/BigInteger;
    move/from16 v4, p5

    .line 498
    .local v4, "m":I
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 499
    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 501
    const/4 v5, 0x7

    move-object/from16 v10, p6

    move v9, v5

    move v5, v4

    move-object/from16 v4, p7

    .end local p6    # "A":[S
    .end local p7    # "B":[S
    .local v4, "B":[S
    .local v5, "m":I
    .local v9, "i":I
    .local v10, "A":[S
    :goto_0
    if-ltz v9, :cond_0

    .line 504
    sub-int v5, p3, v5

    .line 505
    and-int/lit8 v6, v9, 0x1

    rsub-int/lit8 v6, v6, 0x1

    aget-object v12, v3, v6

    .line 506
    .local v12, "modulus":Ljava/math/BigInteger;
    and-int/lit8 v6, v9, 0x1

    mul-int/lit8 v6, v6, 0x4

    rsub-int/lit8 v8, v6, 0x4

    .line 509
    .local v8, "wOff":I
    move-object v6, p0

    move-object v11, p1

    move-object/from16 v7, p2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF3(Lorg/bouncycastle/crypto/BlockCipher;[BII[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v13

    .line 512
    .local v13, "y":Ljava/math/BigInteger;
    invoke-virtual {p1, v4}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 515
    .local v6, "c":Ljava/math/BigInteger;
    move-object v7, v4

    .line 516
    .local v7, "C":[S
    move-object v4, v10

    .line 517
    move-object v10, v7

    .line 518
    invoke-virtual {p1, v6, v5, v7}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    .line 501
    .end local v6    # "c":Ljava/math/BigInteger;
    .end local v7    # "C":[S
    .end local v8    # "wOff":I
    .end local v12    # "modulus":Ljava/math/BigInteger;
    .end local v13    # "y":Ljava/math/BigInteger;
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 521
    .end local v9    # "i":I
    :cond_0
    invoke-static {v10}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 522
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 524
    invoke-static {v10, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v6

    return-object v6
.end method

.method static decryptFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 11
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 34
    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    .line 37
    move/from16 v6, p5

    .line 38
    .local v6, "n":I
    div-int/lit8 v7, v6, 0x2

    .local v7, "u":I
    sub-int v8, v6, v7

    .line 40
    .local v8, "v":I
    invoke-static {p3, p4, v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v9

    .line 41
    .local v9, "A":[S
    add-int v2, p4, v7

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v10

    .line 43
    .local v10, "B":[S
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v2

    .line 45
    .local v2, "rv":[S
    invoke-static {v2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object v3

    return-object v3
.end method

.method static decryptFF1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 11
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    .line 53
    move/from16 v6, p5

    .line 54
    .local v6, "n":I
    div-int/lit8 v7, v6, 0x2

    .local v7, "u":I
    sub-int v8, v6, v7

    .line 56
    .local v8, "v":I
    new-array v9, v7, [S

    .line 57
    .local v9, "A":[S
    new-array v10, v8, [S

    .line 59
    .local v10, "B":[S
    const/4 v2, 0x0

    invoke-static {p3, p4, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    add-int v3, p4, v7

    invoke-static {p3, v3, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v2

    return-object v2
.end method

.method static decryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 6
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[B
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    .line 105
    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local v3    # "buf":[B
    .end local v4    # "off":I
    .end local v5    # "len":I
    .restart local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .restart local p3    # "buf":[B
    .restart local p4    # "off":I
    .restart local p5    # "len":I
    array-length v0, p2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 110
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implDecryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static decryptFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 9
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak56"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak56",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[B
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    .line 117
    array-length p0, p2

    const/4 p3, 0x7

    if-ne p0, p3, :cond_0

    .line 122
    move v8, v5

    .end local v5    # "len":I
    .local v8, "len":I
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v5

    .line 124
    .local v5, "tweak64":[B
    move-object v6, v3

    move v7, v4

    move-object v4, p1

    move-object v3, v0

    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v3, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v6, "buf":[B
    .local v7, "off":I
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implDecryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object p0

    move-object p1, v5

    move-object v3, v6

    move v5, v8

    .end local v6    # "buf":[B
    .end local v8    # "len":I
    .restart local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[B
    .local v5, "len":I
    .local p1, "tweak64":[B
    return-object p0

    .line 119
    .end local v7    # "off":I
    .local v4, "off":I
    .local p1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    :cond_0
    move v7, v4

    move-object v4, p1

    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .restart local v7    # "off":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tweak should be 56 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static decryptFF3_1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 9
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak56"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak56",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[S
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[S
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    .line 131
    array-length p0, p2

    const/4 p3, 0x7

    if-ne p0, p3, :cond_0

    .line 136
    move v8, v5

    .end local v5    # "len":I
    .local v8, "len":I
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v5

    .line 138
    .local v5, "tweak64":[B
    move-object v6, v3

    move v7, v4

    move-object v4, p1

    move-object v3, v0

    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v3, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v6, "buf":[S
    .local v7, "off":I
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implDecryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object p0

    move-object p1, v5

    move-object v3, v6

    move v5, v8

    .end local v6    # "buf":[S
    .end local v8    # "len":I
    .restart local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[S
    .local v5, "len":I
    .local p1, "tweak64":[B
    return-object p0

    .line 133
    .end local v7    # "off":I
    .local v4, "off":I
    .local p1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    :cond_0
    move v7, v4

    move-object v4, p1

    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .restart local v7    # "off":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tweak should be 56 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 18
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "T"    # [B
    .param p3, "n"    # I
    .param p4, "u"    # I
    .param p5, "v"    # I
    .param p6, "A"    # [S
    .param p7, "B"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "T",
            "n",
            "u",
            "v",
            "A",
            "B"
        }
    .end annotation

    .line 174
    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v11

    .line 175
    .local v11, "radix":I
    move-object/from16 v1, p2

    array-length v12, v1

    .line 177
    .local v12, "t":I
    invoke-static {v11, v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateB_FF1(II)I

    move-result v2

    .line 178
    .local v2, "b":I
    add-int/lit8 v0, v2, 0x7

    and-int/lit8 v3, v0, -0x4

    .line 180
    .local v3, "d":I
    int-to-byte v0, v9

    invoke-static {v11, v0, v8, v12}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateP_FF1(IBII)[B

    move-result-object v5

    .line 182
    .local v5, "P":[B
    int-to-long v6, v11

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 183
    .local v13, "bigRadix":Ljava/math/BigInteger;
    invoke-static {v13, v9, v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v14

    .line 185
    .local v14, "modUV":[Ljava/math/BigInteger;
    move/from16 v0, p5

    .line 187
    .local v0, "m":I
    const/4 v4, 0x0

    move-object/from16 v15, p6

    move-object/from16 v6, p7

    move/from16 v16, v0

    .end local v0    # "m":I
    .end local p6    # "A":[S
    .end local p7    # "B":[S
    .local v4, "i":I
    .local v6, "B":[S
    .local v15, "A":[S
    .local v16, "m":I
    :goto_0
    const/16 v0, 0xa

    if-ge v4, v0, :cond_0

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF1(Lorg/bouncycastle/crypto/BlockCipher;[BIII[B[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v8

    .line 193
    .local v8, "y":Ljava/math/BigInteger;
    sub-int v0, p3, v16

    .line 194
    .end local v16    # "m":I
    .restart local v0    # "m":I
    and-int/lit8 v1, v4, 0x1

    aget-object v1, v14, v1

    .line 197
    .local v1, "modulus":Ljava/math/BigInteger;
    move/from16 p6, v2

    .end local v2    # "b":I
    .local p6, "b":I
    invoke-virtual {v7, v15}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v2

    .line 198
    .local v2, "num":Ljava/math/BigInteger;
    move/from16 p7, v3

    .end local v3    # "d":I
    .local p7, "d":I
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 201
    .local v3, "c":Ljava/math/BigInteger;
    move-object/from16 v16, v15

    .line 202
    .local v16, "C":[S
    move-object v15, v6

    .line 203
    move-object/from16 v6, v16

    .line 204
    move-object/from16 v17, v1

    move-object/from16 v1, v16

    .end local v16    # "C":[S
    .local v1, "C":[S
    .local v17, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v7, v3, v0, v1}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    .line 187
    .end local v1    # "C":[S
    .end local v2    # "num":Ljava/math/BigInteger;
    .end local v3    # "c":Ljava/math/BigInteger;
    .end local v8    # "y":Ljava/math/BigInteger;
    .end local v17    # "modulus":Ljava/math/BigInteger;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    move/from16 v8, p3

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v16, v0

    goto :goto_0

    .line 207
    .end local v0    # "m":I
    .end local v4    # "i":I
    .end local p6    # "b":I
    .end local p7    # "d":I
    .local v2, "b":I
    .local v3, "d":I
    .local v16, "m":I
    :cond_0
    invoke-static {v15, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v0

    return-object v0
.end method

.method private static encFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 14
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "t"    # [B
    .param p3, "n"    # I
    .param p4, "v"    # I
    .param p5, "u"    # I
    .param p6, "a"    # [S
    .param p7, "b"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "t",
            "n",
            "v",
            "u",
            "a",
            "b"
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 561
    .local v0, "bigRadix":Ljava/math/BigInteger;
    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v3

    .line 563
    .local v3, "modVU":[Ljava/math/BigInteger;
    move/from16 v4, p4

    .line 566
    .local v4, "m":I
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 567
    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 569
    const/4 v5, 0x0

    move-object/from16 v9, p7

    move v8, v5

    move v5, v4

    move-object/from16 v4, p6

    .end local p6    # "a":[S
    .end local p7    # "b":[S
    .local v4, "a":[S
    .local v5, "m":I
    .local v8, "i":I
    .local v9, "b":[S
    :goto_0
    const/16 v6, 0x8

    if-ge v8, v6, :cond_0

    .line 572
    sub-int v11, p3, v5

    .line 573
    .end local v5    # "m":I
    .local v11, "m":I
    and-int/lit8 v5, v8, 0x1

    rsub-int/lit8 v5, v5, 0x1

    aget-object v12, v3, v5

    .line 574
    .local v12, "modulus":Ljava/math/BigInteger;
    and-int/lit8 v5, v8, 0x1

    mul-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v7, v5, 0x4

    .line 577
    .local v7, "wOff":I
    move-object v5, p0

    move-object v10, p1

    move-object/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF3(Lorg/bouncycastle/crypto/BlockCipher;[BII[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v13

    .line 580
    .local v13, "y":Ljava/math/BigInteger;
    invoke-virtual {p1, v4}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 583
    .local v5, "c":Ljava/math/BigInteger;
    move-object v6, v4

    .line 584
    .local v6, "C":[S
    move-object v4, v9

    .line 585
    move-object v9, v6

    .line 586
    invoke-virtual {p1, v5, v11, v6}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    .line 569
    .end local v5    # "c":Ljava/math/BigInteger;
    .end local v6    # "C":[S
    .end local v7    # "wOff":I
    .end local v12    # "modulus":Ljava/math/BigInteger;
    .end local v13    # "y":Ljava/math/BigInteger;
    add-int/lit8 v8, v8, 0x1

    move v5, v11

    goto :goto_0

    .line 589
    .end local v8    # "i":I
    .end local v11    # "m":I
    .local v5, "m":I
    :cond_0
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 590
    invoke-static {v9}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    .line 592
    invoke-static {v4, v9}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v6

    return-object v6
.end method

.method static encryptFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 11
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    .line 146
    move/from16 v6, p5

    .line 147
    .local v6, "n":I
    div-int/lit8 v7, v6, 0x2

    .local v7, "u":I
    sub-int v8, v6, v7

    .line 149
    .local v8, "v":I
    invoke-static {p3, p4, v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v9

    .line 150
    .local v9, "A":[S
    add-int v2, p4, v7

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v10

    .line 152
    .local v10, "B":[S
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object v2

    return-object v2
.end method

.method static encryptFF1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 11
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    .line 160
    move/from16 v6, p5

    .line 161
    .local v6, "n":I
    div-int/lit8 v7, v6, 0x2

    .local v7, "u":I
    sub-int v8, v6, v7

    .line 163
    .local v8, "v":I
    new-array v9, v7, [S

    .line 164
    .local v9, "A":[S
    new-array v10, v8, [S

    .line 166
    .local v10, "B":[S
    const/4 v2, 0x0

    invoke-static {p3, p4, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    add-int v3, p4, v7

    invoke-static {p3, v3, v10, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v2

    return-object v2
.end method

.method static encryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 6
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[B
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    .line 214
    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local v3    # "buf":[B
    .end local v4    # "off":I
    .end local v5    # "len":I
    .restart local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .restart local p3    # "buf":[B
    .restart local p4    # "off":I
    .restart local p5    # "len":I
    array-length v0, p2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 219
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implEncryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static encryptFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 9
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak56"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak56",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 249
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[B
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    .line 251
    array-length p0, p2

    const/4 p3, 0x7

    if-ne p0, p3, :cond_0

    .line 256
    move v8, v5

    .end local v5    # "len":I
    .local v8, "len":I
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v5

    .line 258
    .local v5, "tweak64":[B
    move-object v6, v3

    move v7, v4

    move-object v4, p1

    move-object v3, v0

    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v3, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v6, "buf":[B
    .local v7, "off":I
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object p0

    move-object p1, v5

    move-object v3, v6

    move v5, v8

    .end local v6    # "buf":[B
    .end local v8    # "len":I
    .restart local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[B
    .local v5, "len":I
    .local p1, "tweak64":[B
    return-object p0

    .line 253
    .end local v7    # "off":I
    .local v4, "off":I
    .local p1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    :cond_0
    move v7, v4

    move-object v4, p1

    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .restart local v7    # "off":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tweak should be 56 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static encryptFF3_1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 9
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak56"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak56",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[S
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[S
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    .line 238
    array-length p0, p2

    const/4 p3, 0x7

    if-ne p0, p3, :cond_0

    .line 242
    move v8, v5

    .end local v5    # "len":I
    .local v8, "len":I
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v5

    .line 244
    .local v5, "tweak64":[B
    move-object v6, v3

    move v7, v4

    move-object v4, p1

    move-object v3, v0

    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v3, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v6, "buf":[S
    .local v7, "off":I
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object p0

    move-object p1, v5

    move-object v3, v6

    move v5, v8

    .end local v6    # "buf":[S
    .end local v8    # "len":I
    .restart local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[S
    .local v5, "len":I
    .local p1, "tweak64":[B
    return-object p0

    .line 240
    .end local v7    # "off":I
    .local v4, "off":I
    .local p1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    :cond_0
    move v7, v4

    move-object v4, p1

    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v4, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .restart local v7    # "off":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tweak should be 56 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static encryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 6
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p3    # "buf":[S
    .end local p4    # "off":I
    .end local p5    # "len":I
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v3, "buf":[S
    .local v4, "off":I
    .local v5, "len":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    .line 226
    .end local v0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local v3    # "buf":[S
    .end local v4    # "off":I
    .end local v5    # "len":I
    .restart local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .restart local p3    # "buf":[S
    .restart local p4    # "off":I
    .restart local p5    # "len":I
    array-length v0, p2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 231
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implEncryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected static implDecryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 8
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 462
    move-object v2, p2

    .line 463
    .local v2, "T":[B
    move v3, p5

    .line 464
    .local v3, "n":I
    div-int/lit8 v4, v3, 0x2

    .local v4, "v":I
    sub-int v5, v3, v4

    .line 466
    .local v5, "u":I
    invoke-static {p3, p4, v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v6

    .line 467
    .local v6, "A":[S
    add-int v0, p4, v5

    invoke-static {p3, v0, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v7

    .line 469
    .local v7, "B":[S
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object p0

    .line 471
    .local p0, "rv":[S
    invoke-static {p0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object p1

    return-object p1
.end method

.method protected static implDecryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 8
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 477
    move-object v2, p2

    .line 478
    .local v2, "T":[B
    move v3, p5

    .line 479
    .local v3, "n":I
    div-int/lit8 v4, v3, 0x2

    .local v4, "v":I
    sub-int v5, v3, v4

    .line 481
    .local v5, "u":I
    new-array v6, v5, [S

    .line 482
    .local v6, "A":[S
    new-array v7, v4, [S

    .line 484
    .local v7, "B":[S
    const/4 v0, 0x0

    invoke-static {p3, p4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    add-int v1, p4, v5

    invoke-static {p3, v1, v7, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object p0

    return-object p0
.end method

.method protected static implEncryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 8
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 530
    move-object v2, p2

    .line 531
    .local v2, "T":[B
    move v3, p5

    .line 532
    .local v3, "n":I
    div-int/lit8 v4, v3, 0x2

    .local v4, "v":I
    sub-int v5, v3, v4

    .line 534
    .local v5, "u":I
    invoke-static {p3, p4, v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v6

    .line 535
    .local v6, "A":[S
    add-int v0, p4, v5

    invoke-static {p3, v0, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v7

    .line 537
    .local v7, "B":[S
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object p0

    .line 539
    .local p0, "rv":[S
    invoke-static {p0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object p1

    return-object p1
.end method

.method protected static implEncryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 8
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "radixConverter"    # Lorg/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak64"    # [B
    .param p3, "buf"    # [S
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "radixConverter",
            "tweak64",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 545
    move-object v2, p2

    .line 546
    .local v2, "T":[B
    move v3, p5

    .line 547
    .local v3, "n":I
    div-int/lit8 v4, v3, 0x2

    .local v4, "v":I
    sub-int v5, v3, v4

    .line 549
    .local v5, "u":I
    new-array v6, v5, [S

    .line 550
    .local v6, "A":[S
    new-array v7, v4, [S

    .line 552
    .local v7, "B":[S
    const/4 v0, 0x0

    invoke-static {p3, p4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    add-int v1, p4, v5

    invoke-static {p3, v1, v7, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local p1    # "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    .local v0, "cipher":Lorg/bouncycastle/crypto/BlockCipher;
    .local v1, "radixConverter":Lorg/bouncycastle/crypto/util/RadixConverter;
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object p0

    return-object p0
.end method

.method protected static num([BII)Ljava/math/BigInteger;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 597
    new-instance v0, Ljava/math/BigInteger;

    add-int v1, p1, p2

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected static prf(Lorg/bouncycastle/crypto/BlockCipher;[B)[B
    .locals 6
    .param p0, "c"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "x"
        }
    .end annotation

    .line 602
    array-length v0, p1

    const/16 v1, 0x10

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 607
    array-length v0, p1

    div-int/2addr v0, v1

    .line 608
    .local v0, "m":I
    new-array v2, v1, [B

    .line 610
    .local v2, "y":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 612
    mul-int/lit8 v4, v3, 0x10

    const/4 v5, 0x0

    invoke-static {v1, p1, v4, v2, v5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 613
    invoke-interface {p0, v2, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 610
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 604
    .end local v0    # "m":I
    .end local v2    # "y":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static toByte([S)[B
    .locals 3
    .param p0, "buf"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 621
    array-length v0, p0

    new-array v0, v0, [B

    .line 623
    .local v0, "s":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 625
    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toShort([BII)[S
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 633
    new-array v0, p2, [S

    .line 635
    .local v0, "s":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 637
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

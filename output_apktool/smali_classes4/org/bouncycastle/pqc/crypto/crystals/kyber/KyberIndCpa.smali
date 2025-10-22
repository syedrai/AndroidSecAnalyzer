.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;
.super Ljava/lang/Object;
.source "KyberIndCpa.java"


# instance fields
.field public final KyberGenerateMatrixNBlocks:I

.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private eta1:I

.field private indCpaBytes:I

.field private indCpaPublicKeyBytes:I

.field private kyberK:I

.field private polyCompressedBytes:I

.field private polyVecBytes:I

.field private polyVecCompressedBytes:I

.field private symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberEta1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->eta1:I

    .line 24
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPublicKeyBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->indCpaPublicKeyBytes:I

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecBytes:I

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->indCpaBytes:I

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecCompressedBytes:I

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyCompressedBytes:I

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    add-int/lit16 v0, v0, 0x1d8

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->KyberGenerateMatrixNBlocks:I

    .line 40
    return-void
.end method

.method private packCipherText(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)[B
    .locals 5
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "v"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "v"
        }
    .end annotation

    .line 277
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->indCpaBytes:I

    new-array v0, v0, [B

    .line 278
    .local v0, "outBuf":[B
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->compressPolyVec()[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecCompressedBytes:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->compressPoly()[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecCompressedBytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyCompressedBytes:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    return-object v0
.end method

.method private static rejectionSampling(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;II[BI)I
    .locals 7
    .param p0, "outputBuffer"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p1, "coeffOff"    # I
    .param p2, "len"    # I
    .param p3, "inpBuf"    # [B
    .param p4, "inpBufLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputBuffer",
            "coeffOff",
            "len",
            "inpBuf",
            "inpBufLen"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    move v1, v0

    .local v1, "pos":I
    move v2, v0

    .line 366
    .local v2, "ctr":I
    :cond_0
    :goto_0
    if-ge v2, p2, :cond_2

    add-int/lit8 v3, v1, 0x3

    if-gt v3, p4, :cond_2

    .line 368
    aget-byte v3, p3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    shr-int/2addr v3, v0

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    int-to-short v3, v3

    .line 369
    .local v3, "val0":S
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    int-to-short v4, v4

    .line 370
    .local v4, "val1":S
    add-int/lit8 v1, v1, 0x3

    .line 371
    const/16 v5, 0xd01

    if-ge v3, v5, :cond_1

    .line 373
    add-int v6, p1, v2

    invoke-virtual {p0, v6, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 374
    add-int/lit8 v2, v2, 0x1

    .line 376
    :cond_1
    if-ge v2, p2, :cond_0

    if-ge v4, v5, :cond_0

    .line 378
    add-int v5, p1, v2

    invoke-virtual {p0, v5, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v3    # "val0":S
    .end local v4    # "val1":S
    :cond_2
    return v2
.end method

.method private unpackCipherText(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[B)V
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "v"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p3, "cipherText"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "v",
            "cipherText"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 288
    .local v0, "compressedPolyVecCipherText":[B
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->decompressPolyVec([B)V

    .line 290
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    array-length v2, p3

    invoke-static {p3, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 291
    .local v1, "compressedPolyCipherText":[B
    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->decompressPoly([B)V

    .line 292
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 6
    .param p1, "cipherText"    # [B
    .param p2, "secretKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipherText",
            "secretKey"
        }
    .end annotation

    .line 389
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaMsgBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 391
    .local v0, "outputMessage":[B
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .local v1, "bp":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 392
    .local v2, "secretKeyPolyVec":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .local v3, "v":Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 394
    .local v4, "mp":Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    invoke-direct {p0, v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackCipherText(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[B)V

    .line 408
    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)V

    .line 430
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecNtt()V

    .line 439
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-static {v4, v2, v1, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 442
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyInverseNttToMont()V

    .line 444
    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polySubtract(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 446
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    .line 448
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toMsg()[B

    move-result-object v0

    .line 450
    return-object v0
.end method

.method public encrypt([B[B[B)[B
    .locals 17
    .param p1, "msg"    # [B
    .param p2, "publicKeyInput"    # [B
    .param p3, "coins"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "publicKeyInput",
            "coins"
        }
    .end annotation

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 149
    .local v2, "nonce":B
    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 150
    .local v3, "sp":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 151
    .local v4, "publicKeyPolyVec":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 152
    .local v5, "errorPolyVector":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v6, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 153
    .local v6, "bp":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v7

    new-array v7, v7, [Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    .line 154
    .local v7, "aMatrixTranspose":[Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v8, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 155
    .local v8, "errorPoly":Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    new-instance v9, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 156
    .local v9, "v":Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v10, v11}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 163
    .local v10, "k":Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    move-object/from16 v11, p2

    invoke-virtual {v0, v4, v11}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v12

    .line 176
    .local v12, "seed":[B
    move-object/from16 v13, p1

    invoke-virtual {v10, v13}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->fromMsg([B)V

    .line 178
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v14, v15, :cond_0

    .line 180
    new-instance v15, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    move/from16 v16, v2

    .end local v2    # "nonce":B
    .local v16, "nonce":B
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v15, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    aput-object v15, v7, v14

    .line 178
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto :goto_0

    .line 183
    .end local v16    # "nonce":B
    .restart local v2    # "nonce":B
    :cond_0
    move/from16 v16, v2

    .end local v2    # "nonce":B
    .restart local v16    # "nonce":B
    const/4 v2, 0x1

    invoke-virtual {v0, v7, v12, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->generateMatrix([Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[BZ)V

    .line 199
    const/4 v2, 0x0

    move/from16 v14, v16

    .end local v16    # "nonce":B
    .local v2, "i":I
    .local v14, "nonce":B
    :goto_1
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v2, v15, :cond_1

    .line 201
    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v15

    invoke-virtual {v15, v1, v14}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getEta1Noise([BB)V

    .line 202
    add-int/lit8 v15, v14, 0x1

    int-to-byte v14, v15

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v2, v15, :cond_2

    .line 208
    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v15

    invoke-virtual {v15, v1, v14}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getEta2Noise([BB)V

    .line 209
    add-int/lit8 v15, v14, 0x1

    int-to-byte v14, v15

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v8, v1, v14}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getEta2Noise([BB)V

    .line 213
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecNtt()V

    .line 230
    const/4 v2, 0x0

    :goto_3
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v2, v15, :cond_3

    .line 233
    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v15

    aget-object v1, v7, v2

    move/from16 v16, v2

    .end local v2    # "i":I
    .local v16, "i":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-static {v15, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 230
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v1, p3

    .end local v16    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 242
    :cond_3
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-static {v9, v4, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 244
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecInverseNttToMont()V

    .line 246
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyInverseNttToMont()V

    .line 248
    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->addPoly(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)V

    .line 251
    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 252
    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 254
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->reducePoly()V

    .line 255
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    .line 270
    invoke-direct {v0, v6, v9}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packCipherText(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)[B

    move-result-object v1

    .line 272
    .local v1, "outputCipherText":[B
    return-object v1
.end method

.method generateKeyPair()[[B
    .locals 14

    .line 50
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 51
    .local v0, "secretKey":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 52
    .local v1, "publicKey":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 54
    .local v2, "e":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 58
    .local v4, "d":[B
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getRandomBytes([B)V

    .line 60
    const/16 v5, 0x40

    new-array v5, v5, [B

    .line 61
    .local v5, "buf":[B
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v6, v5, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    .line 63
    new-array v6, v3, [B

    .line 64
    .local v6, "publicSeed":[B
    new-array v7, v3, [B

    .line 65
    .local v7, "noiseSeed":[B
    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {v5, v3, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    const/4 v3, 0x0

    .line 73
    .local v3, "count":B
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    new-array v9, v9, [Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    .line 76
    .local v9, "aMatrix":[Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v11, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v10, v11, :cond_0

    .line 78
    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-direct {v11, v12}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    aput-object v11, v9, v10

    .line 76
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, v9, v6, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->generateMatrix([Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[BZ)V

    .line 96
    const/4 v10, 0x0

    :goto_1
    iget v11, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v10, v11, :cond_1

    .line 98
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v11

    invoke-virtual {v11, v7, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getEta1Noise([BB)V

    .line 105
    add-int/lit8 v11, v3, 0x1

    int-to-byte v3, v11

    .line 96
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 108
    :cond_1
    const/4 v10, 0x0

    :goto_2
    iget v11, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v10, v11, :cond_2

    .line 110
    invoke-virtual {v2, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v11

    invoke-virtual {v11, v7, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getEta1Noise([BB)V

    .line 111
    add-int/lit8 v11, v3, 0x1

    int-to-byte v3, v11

    .line 108
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecNtt()V

    .line 127
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecNtt()V

    .line 129
    const/4 v10, 0x0

    :goto_3
    iget v11, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v10, v11, :cond_3

    .line 131
    invoke-virtual {v1, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v11

    aget-object v12, v9, v10

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-static {v11, v12, v0, v13}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 132
    invoke-virtual {v1, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->convertToMont()V

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 138
    :cond_3
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->addPoly(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)V

    .line 139
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->reducePoly()V

    .line 141
    invoke-virtual {p0, v1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v11

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)[B

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [[B

    aput-object v11, v13, v8

    const/4 v8, 0x1

    aput-object v12, v13, v8

    return-object v13
.end method

.method public generateMatrix([Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[BZ)V
    .locals 10
    .param p1, "aMatrix"    # [Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "seed"    # [B
    .param p3, "transposed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aMatrix",
            "seed",
            "transposed"
        }
    .end annotation

    .line 326
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->KyberGenerateMatrixNBlocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 327
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v1, v2, :cond_4

    .line 329
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->kyberK:I

    if-ge v2, v3, :cond_3

    .line 331
    if-eqz p3, :cond_0

    .line 333
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    int-to-byte v4, v1

    int-to-byte v5, v2

    invoke-virtual {v3, p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofAbsorb([BBB)V

    goto :goto_2

    .line 337
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    int-to-byte v4, v2

    int-to-byte v5, v1

    invoke-virtual {v3, p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofAbsorb([BBB)V

    .line 339
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->KyberGenerateMatrixNBlocks:I

    mul-int v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofSqueezeBlocks([BII)V

    .line 341
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->KyberGenerateMatrixNBlocks:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    mul-int v3, v3, v4

    .line 342
    .local v3, "buflen":I
    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v4

    const/16 v6, 0x100

    invoke-static {v4, v5, v6, v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->rejectionSampling(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;II[BI)I

    move-result v4

    .line 344
    .local v4, "ctr":I
    :goto_3
    if-ge v4, v6, :cond_2

    .line 346
    rem-int/lit8 v5, v3, 0x3

    .line 347
    .local v5, "off":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_4
    if-ge v7, v5, :cond_1

    .line 349
    sub-int v8, v3, v5

    add-int/2addr v8, v7

    aget-byte v8, v0, v8

    aput-byte v8, v0, v7

    .line 347
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 351
    :cond_1
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v0, v5, v9}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofSqueezeBlocks([BII)V

    .line 352
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->xofBlockBytes:I

    add-int v3, v5, v8

    .line 354
    aget-object v8, p1, v1

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v8

    rsub-int v9, v4, 0x100

    invoke-static {v8, v4, v9, v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->rejectionSampling(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;II[BI)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_3

    .line 329
    .end local v3    # "buflen":I
    .end local v5    # "off":I
    .end local v7    # "k":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    .end local v4    # "ctr":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "j":I
    :cond_4
    return-void
.end method

.method public packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B
    .locals 4
    .param p1, "publicKeyPolyVec"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKeyPolyVec",
            "seed"
        }
    .end annotation

    .line 296
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->indCpaPublicKeyBytes:I

    new-array v0, v0, [B

    .line 297
    .local v0, "buf":[B
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->toBytes()[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecBytes:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecBytes:I

    const/16 v2, 0x20

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v0
.end method

.method public packSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)[B
    .locals 1
    .param p1, "secretKeyPolyVec"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretKeyPolyVec"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->toBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B
    .locals 4
    .param p1, "publicKeyPolyVec"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKeyPolyVec",
            "publicKey"
        }
    .end annotation

    .line 304
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 305
    .local v1, "outputSeed":[B
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->fromBytes([B)V

    .line 306
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->polyVecBytes:I

    const/4 v3, 0x0

    invoke-static {p2, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-object v1
.end method

.method public unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)V
    .locals 0
    .param p1, "secretKeyPolyVec"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "secretKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "secretKeyPolyVec",
            "secretKey"
        }
    .end annotation

    .line 317
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->fromBytes([B)V

    .line 318
    return-void
.end method

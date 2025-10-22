.class public Lorg/bouncycastle/crypto/digests/Blake2sDigest;
.super Ljava/lang/Object;
.source "Blake2sDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BLOCK_LENGTH_BYTES:I = 0x40

.field private static final ROUNDS:I = 0xa

.field private static final blake2s_IV:[I

.field private static final blake2s_sigma:[[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private chainValue:[I

.field private depth:I

.field private digestLength:I

.field private f0:I

.field private f1:I

.field private fanout:I

.field private innerHashLength:I

.field private internalState:[I

.field private isLastNode:Z

.field private key:[B

.field private keyLength:I

.field private leafLength:I

.field private nodeDepth:I

.field private nodeOffset:J

.field private personalization:[B

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private salt:[B

.field private t0:I

.field private t1:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 52
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    .line 64
    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    new-array v3, v1, [B

    fill-array-data v3, :array_2

    new-array v4, v1, [B

    fill-array-data v4, :array_3

    new-array v5, v1, [B

    fill-array-data v5, :array_4

    new-array v6, v1, [B

    fill-array-data v6, :array_5

    new-array v7, v1, [B

    fill-array-data v7, :array_6

    new-array v8, v1, [B

    fill-array-data v8, :array_7

    new-array v9, v1, [B

    fill-array-data v9, :array_8

    new-array v10, v1, [B

    fill-array-data v10, :array_9

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    const/16 v11, 0xa

    new-array v11, v11, [[B

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v3, v11, v2

    const/4 v2, 0x2

    aput-object v4, v11, v2

    const/4 v2, 0x3

    aput-object v5, v11, v2

    const/4 v2, 0x4

    aput-object v6, v11, v2

    const/4 v2, 0x5

    aput-object v7, v11, v2

    const/4 v2, 0x6

    aput-object v8, v11, v2

    const/4 v2, 0x7

    aput-object v9, v11, v2

    aput-object v10, v11, v0

    const/16 v0, 0x9

    aput-object v1, v11, v0

    sput-object v11, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    return-void

    :array_0
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0xet
        0xat
        0x4t
        0x8t
        0x9t
        0xft
        0xdt
        0x6t
        0x1t
        0xct
        0x0t
        0x2t
        0xbt
        0x7t
        0x5t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0xbt
        0x8t
        0xct
        0x0t
        0x5t
        0x2t
        0xft
        0xdt
        0xat
        0xet
        0x3t
        0x6t
        0x7t
        0x1t
        0x9t
        0x4t
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x9t
        0x3t
        0x1t
        0xdt
        0xct
        0xbt
        0xet
        0x2t
        0x6t
        0x5t
        0xat
        0x4t
        0x0t
        0xft
        0x8t
    .end array-data

    :array_5
    .array-data 1
        0x9t
        0x0t
        0x5t
        0x7t
        0x2t
        0x4t
        0xat
        0xft
        0xet
        0x1t
        0xbt
        0xct
        0x6t
        0x8t
        0x3t
        0xdt
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0xct
        0x6t
        0xat
        0x0t
        0xbt
        0x8t
        0x3t
        0x4t
        0xdt
        0x7t
        0x5t
        0xft
        0xet
        0x1t
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0xct
        0x5t
        0x1t
        0xft
        0xet
        0xdt
        0x4t
        0xat
        0x0t
        0x7t
        0x6t
        0x3t
        0x9t
        0x2t
        0x8t
        0xbt
    .end array-data

    :array_8
    .array-data 1
        0xdt
        0xbt
        0x7t
        0xet
        0xct
        0x1t
        0x3t
        0x9t
        0x5t
        0x0t
        0xft
        0x4t
        0x8t
        0x6t
        0x2t
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x6t
        0xft
        0xet
        0x9t
        0xbt
        0x3t
        0x0t
        0x8t
        0xct
        0x2t
        0xdt
        0x7t
        0x1t
        0x4t
        0xat
        0x5t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x2t
        0x8t
        0x4t
        0x7t
        0x6t
        0x1t
        0x5t
        0xft
        0xbt
        0x9t
        0xet
        0x3t
        0xct
        0xdt
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 146
    const/16 v0, 0x100

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 147
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "digestSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestSize"
        }
    .end annotation

    .line 156
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 157
    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 6
    .param p1, "digestBytes"    # I
    .param p2, "hashLength"    # I
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestBytes",
            "hashLength",
            "offset"
        }
    .end annotation

    .line 269
    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .end local p1    # "digestBytes":I
    .end local p2    # "hashLength":I
    .end local p3    # "offset":J
    .local v1, "digestBytes":I
    .local v2, "hashLength":I
    .local v3, "offset":J
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(IIJLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 270
    return-void
.end method

.method constructor <init>(IIJLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 4
    .param p1, "digestBytes"    # I
    .param p2, "hashLength"    # I
    .param p3, "offset"    # J
    .param p5, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestBytes",
            "hashLength",
            "offset",
            "purpose"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 273
    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 274
    iput-wide p3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 275
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 276
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 277
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 278
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 279
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 280
    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 282
    mul-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p5}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 283
    invoke-direct {p0, v1, v1, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 284
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 4
    .param p1, "digestBits"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestBits",
            "purpose"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 190
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 195
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 196
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 198
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 199
    invoke-direct {p0, v1, v1, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 200
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BLAKE2s digest bit length must be a multiple of 8 and not greater than 256"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(I[B[B[BJLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 4
    .param p1, "digestBytes"    # I
    .param p2, "key"    # [B
    .param p3, "salt"    # [B
    .param p4, "personalization"    # [B
    .param p5, "offset"    # J
    .param p7, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
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
            "digestBytes",
            "key",
            "salt",
            "personalization",
            "offset",
            "purpose"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 259
    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 260
    iput-wide p5, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 261
    iput-object p7, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 262
    mul-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p7}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 263
    invoke-direct {p0, p3, p4, p2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake2sDigest;)V
    .locals 4
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/Blake2sDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 161
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 162
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 163
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 164
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 165
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 166
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 167
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 168
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 169
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 170
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 171
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 172
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 173
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 174
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 175
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 176
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 177
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 178
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 179
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 180
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 213
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 214
    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 6
    .param p1, "key"    # [B
    .param p2, "digestBytes"    # I
    .param p3, "salt"    # [B
    .param p4, "personalization"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "digestBytes",
            "salt",
            "personalization"
        }
    .end annotation

    .line 239
    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "key":[B
    .end local p2    # "digestBytes":I
    .end local p3    # "salt":[B
    .end local p4    # "personalization":[B
    .local v1, "key":[B
    .local v2, "digestBytes":I
    .local v3, "salt":[B
    .local v4, "personalization":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>([BI[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 240
    return-void
.end method

.method public constructor <init>([BI[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 6
    .param p1, "key"    # [B
    .param p2, "digestBytes"    # I
    .param p3, "salt"    # [B
    .param p4, "personalization"    # [B
    .param p5, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "digestBytes",
            "salt",
            "personalization",
            "purpose"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v4, 0x10

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 244
    if-lt p2, v3, :cond_0

    if-gt p2, v0, :cond_0

    .line 249
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 250
    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 252
    mul-int/lit8 v0, p2, 0x8

    invoke-static {p0, v0, p5}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 253
    invoke-direct {p0, p3, p4, p1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 254
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid digest length (required: 1 - 32)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "purpose"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 218
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 219
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 220
    invoke-direct {p0, v1, v1, p1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 221
    return-void
.end method

.method constructor <init>([B[B)V
    .locals 7
    .param p1, "key"    # [B
    .param p2, "param"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "param"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 85
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 86
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 91
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 92
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 93
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 94
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 96
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 98
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 109
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 114
    const/16 v3, 0x10

    new-array v4, v3, [I

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    .line 118
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 124
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 128
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 132
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 135
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 287
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 288
    aget-byte v1, p2, v0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    .line 289
    aget-byte v1, p2, v2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 290
    const/4 v1, 0x2

    aget-byte v1, p2, v1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    .line 291
    const/4 v1, 0x3

    aget-byte v1, p2, v1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    .line 292
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    .line 293
    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    const/16 v4, 0x8

    invoke-static {p2, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v5, v5

    or-long/2addr v1, v5

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    .line 295
    const/16 v1, 0xe

    aget-byte v1, p2, v1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    .line 296
    const/16 v1, 0xf

    aget-byte v1, p2, v1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    .line 297
    new-array v1, v4, [B

    .line 298
    .local v1, "salt":[B
    new-array v2, v4, [B

    .line 299
    .local v2, "personalization":[B
    invoke-static {p2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    const/16 v3, 0x18

    invoke-static {p2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    invoke-direct {p0, v1, v2, p1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 302
    return-void
.end method

.method private G(IIIIII)V
    .locals 3
    .param p1, "m1"    # I
    .param p2, "m2"    # I
    .param p3, "posA"    # I
    .param p4, "posB"    # I
    .param p5, "posC"    # I
    .param p6, "posD"    # I
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
            "m1",
            "m2",
            "posA",
            "posB",
            "posC",
            "posD"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p4

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aput v1, v0, p3

    .line 572
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p3

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p6

    .line 573
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p6

    add-int/2addr v1, v2

    aput v1, v0, p5

    .line 574
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p5

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p4

    .line 575
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p4

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    aput v1, v0, p3

    .line 576
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p3

    xor-int/2addr v1, v2

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p6

    .line 577
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p6

    add-int/2addr v1, v2

    aput v1, v0, p5

    .line 578
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v1, v1, p4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v2, v2, p5

    xor-int/2addr v1, v2

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p4

    .line 579
    return-void
.end method

.method private compress([BI)V
    .locals 10
    .param p1, "message"    # [B
    .param p2, "messagePos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "messagePos"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->initializeInternalState()V

    .line 544
    const/16 v0, 0x10

    new-array v7, v0, [I

    .line 545
    .local v7, "m":[I
    invoke-static {p1, p2, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 547
    const/4 v0, 0x0

    move v8, v0

    .local v8, "round":I
    :goto_0
    const/16 v9, 0xa

    if-ge v8, v9, :cond_0

    .line 551
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0x8

    const/16 v6, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 552
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0x9

    const/16 v6, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 553
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v2, 0x5

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0xa

    const/16 v6, 0xe

    const/4 v3, 0x2

    const/4 v4, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 554
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0xb

    const/16 v6, 0xf

    const/4 v3, 0x3

    const/4 v4, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 556
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v2, 0x9

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 557
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    aget-byte v0, v0, v9

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v2, 0xb

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 558
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v1, 0xc

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v2, 0xd

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0x8

    const/16 v6, 0xd

    const/4 v3, 0x2

    const/4 v4, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 559
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v1, 0xe

    aget-byte v0, v0, v1

    aget v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_sigma:[[B

    aget-object v0, v0, v8

    const/16 v2, 0xf

    aget-byte v0, v0, v2

    aget v2, v7, v0

    const/16 v5, 0x9

    const/16 v6, 0xe

    const/4 v3, 0x3

    const/4 v4, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->G(IIIIII)V

    .line 547
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 563
    .end local v8    # "round":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 565
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    aget v4, v4, v1

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    add-int/lit8 v5, v1, 0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v1

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 567
    .end local v1    # "offset":I
    :cond_1
    return-void
.end method

.method private init([B[B[B)V
    .locals 9
    .param p1, "salt"    # [B
    .param p2, "personalization"    # [B
    .param p3, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "personalization",
            "key"
        }
    .end annotation

    .line 307
    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    .line 309
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    .line 311
    array-length v3, p3

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    .line 312
    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    if-gt v3, v1, :cond_0

    .line 316
    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    .line 317
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    invoke-static {p3, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    invoke-static {p3, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 32 bytes are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    if-nez v0, :cond_5

    .line 324
    const/16 v0, 0x8

    new-array v3, v0, [I

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 326
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v4, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    aget v4, v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->keyLength:I

    shl-int/2addr v6, v0

    or-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->fanout:I

    shl-int/lit8 v6, v6, 0x10

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->depth:I

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v3, v2

    .line 327
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v4, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->leafLength:I

    xor-int/2addr v4, v6

    aput v4, v3, v5

    .line 329
    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    shr-long/2addr v3, v1

    long-to-int v1, v3

    .line 330
    .local v1, "nofHi":I
    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeOffset:J

    long-to-int v4, v3

    .line 331
    .local v4, "nofLo":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v5, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v5, v4

    aput v5, v3, v6

    .line 332
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v5, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->nodeDepth:I

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v1

    iget v8, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->innerHashLength:I

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    xor-int/2addr v5, v7

    aput v5, v3, v6

    .line 334
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v5, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    aput v5, v3, v6

    .line 335
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v5, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v7, 0x5

    aget v5, v5, v7

    aput v5, v3, v7

    .line 336
    if-eqz p1, :cond_3

    .line 338
    array-length v3, p1

    if-ne v3, v0, :cond_2

    .line 342
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    .line 343
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    array-length v5, p1

    invoke-static {p1, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    aget v5, v3, v6

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    xor-int/2addr v5, v8

    aput v5, v3, v6

    .line 346
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    aget v5, v3, v7

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    xor-int/2addr v5, v8

    aput v5, v3, v7

    goto :goto_1

    .line 340
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Salt length must be exactly 8 bytes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v5, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v7, 0x6

    aget v5, v5, v7

    aput v5, v3, v7

    .line 350
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    sget-object v5, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v8, 0x7

    aget v5, v5, v8

    aput v5, v3, v8

    .line 351
    if-eqz p2, :cond_5

    .line 353
    array-length v3, p2

    if-ne v3, v0, :cond_4

    .line 357
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    .line 358
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    array-length v3, p2

    invoke-static {p2, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    aget v3, v0, v7

    invoke-static {p2, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    xor-int/2addr v2, v3

    aput v2, v0, v7

    .line 361
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    aget v2, v0, v8

    invoke-static {p2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v0, v8

    goto :goto_2

    .line 355
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Personalization length must be exactly 8 bytes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    .end local v1    # "nofHi":I
    .end local v4    # "nofLo":I
    :cond_5
    :goto_2
    return-void
.end method

.method private initializeInternalState()V
    .locals 5

    .line 369
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    array-length v2, v2

    const/4 v4, 0x4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    aget v2, v2, v4

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 372
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 373
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 374
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->blake2s_IV:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    xor-int/2addr v1, v2

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 375
    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 625
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 627
    :cond_0
    return-void
.end method

.method public clearSalt()V
    .locals 2

    .line 635
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 639
    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOffset"
        }
    .end annotation

    .line 480
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    .line 485
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 486
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    if-eqz v1, :cond_0

    .line 488
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 490
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 493
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    if-gez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    neg-int v1, v1

    if-le v0, v1, :cond_1

    .line 495
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 497
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->compress([BI)V

    .line 498
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 499
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->internalState:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    .line 501
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    ushr-int/lit8 v0, v0, 0x2

    .local v0, "full":I
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    and-int/lit8 v2, v2, 0x3

    .line 502
    .local v2, "partial":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    invoke-static {v3, v1, v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 503
    if-lez v2, :cond_2

    .line 505
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 506
    .local v3, "bytes":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    aget v4, v4, v0

    invoke-static {v4, v3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 507
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    add-int/2addr v4, p2

    sub-int/2addr v4, v2

    invoke-static {v3, v1, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    .end local v3    # "bytes":[B
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    .line 512
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->reset()V

    .line 514
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    return v1

    .line 482
    .end local v0    # "full":I
    .end local v2    # "partial":I
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 593
    const-string v0, "BLAKE2s"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 614
    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 603
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 4

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 524
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f0:I

    .line 525
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->f1:I

    .line 526
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 527
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 528
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 529
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->chainValue:[I

    .line 530
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 531
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->salt:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->personalization:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->key:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->init([B[B[B)V

    .line 538
    return-void
.end method

.method protected setAsLastNode()V
    .locals 1

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->isLastNode:Z

    .line 584
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 387
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    rsub-int/lit8 v0, v0, 0x40

    .line 388
    .local v0, "remainingLength":I
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 390
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 391
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    if-nez v2, :cond_0

    .line 393
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 395
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->compress([BI)V

    .line 396
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 397
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    aput-byte p1, v2, v3

    .line 398
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    goto :goto_0

    .line 402
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    aput-byte p1, v2, v3

    .line 403
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 405
    :goto_0
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "message"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "offset",
            "len"
        }
    .end annotation

    .line 416
    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_2

    .line 421
    :cond_0
    const/4 v0, 0x0

    .line 423
    .local v0, "remainingLength":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 427
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    rsub-int/lit8 v0, v1, 0x40

    .line 428
    if-ge v0, p3, :cond_2

    .line 430
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    add-int/lit8 v1, v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 433
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    if-nez v1, :cond_1

    .line 435
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 437
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->compress([BI)V

    .line 438
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 439
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 445
    return-void

    .line 451
    :cond_3
    :goto_0
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x40

    .line 452
    .local v1, "blockWiseLastPos":I
    add-int v3, p2, v0

    .line 453
    .local v3, "messagePos":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 457
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    add-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    .line 458
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t0:I

    if-nez v4, :cond_4

    .line 460
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->t1:I

    .line 462
    :cond_4
    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->compress([BI)V

    .line 454
    add-int/lit8 v3, v3, 0x40

    goto :goto_1

    .line 466
    :cond_5
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->buffer:[B

    add-int v5, p2, p3

    sub-int/2addr v5, v3

    invoke-static {p1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    add-int v4, p2, p3

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->bufferPos:I

    .line 469
    return-void

    .line 418
    .end local v0    # "remainingLength":I
    .end local v1    # "blockWiseLastPos":I
    .end local v3    # "messagePos":I
    :cond_6
    :goto_2
    return-void
.end method

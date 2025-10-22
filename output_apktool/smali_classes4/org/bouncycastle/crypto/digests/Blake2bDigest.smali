.class public Lorg/bouncycastle/crypto/digests/Blake2bDigest;
.super Ljava/lang/Object;
.source "Blake2bDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BLOCK_LENGTH_BYTES:I = 0x80

.field private static ROUNDS:I

.field private static final blake2b_IV:[J

.field private static final blake2b_sigma:[[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private chainValue:[J

.field private depth:I

.field private digestLength:I

.field private f0:J

.field private f1:J

.field private fanout:I

.field private innerHashLength:I

.field private internalState:[J

.field private isLastNode:Z

.field private key:[B

.field private keyLength:I

.field private leafLength:I

.field private nodeDepth:I

.field private nodeOffset:J

.field private personalization:[B

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private salt:[B

.field private t0:J

.field private t1:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 51
    const/16 v0, 0x8

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    .line 61
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

    new-array v11, v1, [B

    fill-array-data v11, :array_a

    new-array v12, v1, [B

    fill-array-data v12, :array_b

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    const/16 v13, 0xc

    new-array v14, v13, [[B

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v2, 0x1

    aput-object v3, v14, v2

    const/4 v2, 0x2

    aput-object v4, v14, v2

    const/4 v2, 0x3

    aput-object v5, v14, v2

    const/4 v2, 0x4

    aput-object v6, v14, v2

    const/4 v2, 0x5

    aput-object v7, v14, v2

    const/4 v2, 0x6

    aput-object v8, v14, v2

    const/4 v2, 0x7

    aput-object v9, v14, v2

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    const/16 v0, 0xb

    aput-object v1, v14, v0

    sput-object v14, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    .line 77
    sput v13, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->ROUNDS:I

    return-void

    :array_0
    .array-data 8
        0x6a09e667f3bcc908L    # 6.344059688352415E202
        -0x4498517a7b3558c5L    # -1.5671250923562117E-22
        0x3c6ef372fe94f82bL    # 1.342284505169847E-17
        -0x5ab00ac5a0e2c90fL
        0x510e527fade682d1L    # 2.876275032471325E82
        -0x64fa9773d4c193e1L
        0x1f83d9abfb41bd6bL    # 7.229011495228878E-157
        0x5be0cd19137e2179L    # 3.816167663240759E134
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

    :array_b
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

    :array_c
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
.end method

.method public constructor <init>()V
    .locals 2

    .line 126
    const/16 v0, 0x200

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 127
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

    .line 137
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 138
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 5
    .param p1, "digestSize"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestSize",
            "purpose"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 84
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 87
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 93
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    .line 94
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    .line 96
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    .line 97
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    .line 98
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    .line 100
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 107
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 109
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    .line 111
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 114
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 115
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 116
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 119
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 165
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 166
    const/16 v1, 0x8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x200

    if-gt p1, v1, :cond_0

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    .line 172
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 173
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 174
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 175
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 176
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    .line 177
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BLAKE2b digest bit length must be a multiple of 8 and not greater than 512"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake2bDigest;)V
    .locals 4
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 84
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 87
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 93
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    .line 94
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    .line 96
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    .line 97
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    .line 98
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    .line 100
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 107
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    .line 111
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 114
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 115
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 116
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 119
    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 143
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 144
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 145
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 146
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 147
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 148
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 149
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 150
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 151
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 152
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 153
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 154
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 156
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

    .line 191
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 192
    return-void
.end method

.method public constructor <init>([BI[B[B)V
    .locals 6
    .param p1, "key"    # [B
    .param p2, "digestLength"    # I
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
            "digestLength",
            "salt",
            "personalization"
        }
    .end annotation

    .line 231
    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "key":[B
    .end local p2    # "digestLength":I
    .end local p3    # "salt":[B
    .end local p4    # "personalization":[B
    .local v1, "key":[B
    .local v2, "digestLength":I
    .local v3, "salt":[B
    .local v4, "personalization":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([BI[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 232
    return-void
.end method

.method public constructor <init>([BI[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 8
    .param p1, "key"    # [B
    .param p2, "digestLength"    # I
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
            "digestLength",
            "salt",
            "personalization",
            "purpose"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 84
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 87
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 93
    const/4 v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    .line 94
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    .line 95
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    .line 96
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    .line 97
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    .line 98
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    .line 100
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 105
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 107
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 109
    const/16 v6, 0x10

    new-array v7, v6, [J

    iput-object v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    .line 111
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 114
    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 115
    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 116
    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 119
    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 236
    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 237
    const/16 v2, 0x80

    new-array v4, v2, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 238
    if-lt p2, v3, :cond_6

    if-gt p2, v0, :cond_6

    .line 243
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 244
    if-eqz p3, :cond_1

    .line 246
    array-length v3, p3

    if-ne v3, v6, :cond_0

    .line 251
    new-array v3, v6, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 252
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    array-length v4, p3

    invoke-static {p3, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt length must be exactly 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 256
    array-length v3, p4

    if-ne v3, v6, :cond_2

    .line 261
    new-array v3, v6, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 262
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    array-length v4, p4

    invoke-static {p4, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "personalization length must be exactly 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 267
    array-length v3, p1

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 268
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    array-length v3, p1

    if-gt v3, v0, :cond_4

    .line 275
    array-length v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length v3, p1

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_2

    .line 272
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 64 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_5
    :goto_2
    mul-int/lit8 v0, p2, 0x8

    invoke-static {p0, v0, p5}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 281
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    .line 282
    return-void

    .line 240
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid digest length (required: 1 - 64)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 6
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

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 84
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 87
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 93
    const/4 v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    .line 94
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    .line 95
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    .line 96
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    .line 97
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    .line 98
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    .line 100
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 105
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 107
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 109
    const/16 v5, 0x10

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    .line 111
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 114
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 115
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 116
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 119
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 195
    const/16 v2, 0x80

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 196
    if-eqz p1, :cond_1

    .line 198
    array-length v3, p1

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 199
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    array-length v3, p1

    if-gt v3, v0, :cond_0

    .line 206
    array-length v3, p1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 207
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 64 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 211
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 213
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 214
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    .line 215
    return-void
.end method

.method public constructor <init>([B[B)V
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

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    .line 84
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    .line 87
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    .line 93
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    .line 94
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    .line 95
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    .line 96
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    .line 97
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    .line 98
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    .line 100
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 105
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 107
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 109
    const/16 v5, 0x10

    new-array v6, v5, [J

    iput-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    .line 111
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 114
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 115
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 116
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 119
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 286
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    .line 302
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 303
    aget-byte v0, p2, v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    .line 304
    aget-byte v0, p2, v2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    .line 305
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    .line 306
    const/4 v0, 0x3

    aget-byte v0, p2, v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    .line 307
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    .line 308
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    const/16 v2, 0x8

    invoke-static {p2, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    .line 310
    aget-byte v0, p2, v5

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    .line 311
    const/16 v0, 0x11

    aget-byte v0, p2, v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    .line 316
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    .line 317
    return-void
.end method

.method private G(JJIIII)V
    .locals 6
    .param p1, "m1"    # J
    .param p3, "m2"    # J
    .param p5, "posA"    # I
    .param p6, "posB"    # I
    .param p7, "posC"    # I
    .param p8, "posD"    # I
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

    .line 557
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p6

    add-long/2addr v2, v4

    add-long/2addr v2, p1

    aput-wide v2, v0, p5

    .line 558
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p5

    xor-long/2addr v2, v4

    const/16 v1, 0x20

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    aput-wide v1, v0, p8

    .line 559
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p8

    add-long/2addr v2, v4

    aput-wide v2, v0, p7

    .line 560
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p7

    xor-long/2addr v2, v4

    const/16 v1, 0x18

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    aput-wide v1, v0, p6

    .line 561
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p5

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p6

    add-long/2addr v2, v4

    add-long/2addr v2, p3

    aput-wide v2, v0, p5

    .line 562
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p5

    xor-long/2addr v2, v4

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    aput-wide v1, v0, p8

    .line 563
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p7

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p8

    add-long/2addr v2, v4

    aput-wide v2, v0, p7

    .line 564
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v2, v1, p6

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v4, v1, p7

    xor-long/2addr v2, v4

    const/16 v1, 0x3f

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    aput-wide v1, v0, p6

    .line 565
    return-void
.end method

.method private compress([BI)V
    .locals 11
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

    .line 526
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->initializeInternalState()V

    .line 528
    const/16 v0, 0x10

    new-array v9, v0, [J

    .line 529
    .local v9, "m":[J
    invoke-static {p1, p2, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 531
    const/4 v0, 0x0

    move v10, v0

    .local v10, "round":I
    :goto_0
    sget v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->ROUNDS:I

    if-ge v10, v0, :cond_0

    .line 536
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x8

    const/16 v8, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 537
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 538
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v3, 0x5

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xa

    const/16 v8, 0xe

    const/4 v5, 0x2

    const/4 v6, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 539
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/4 v3, 0x7

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xb

    const/16 v8, 0xf

    const/4 v5, 0x3

    const/4 v6, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 541
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 542
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v3, 0xb

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 543
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v1, 0xc

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v3, 0xd

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x8

    const/16 v8, 0xd

    const/4 v5, 0x2

    const/4 v6, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 544
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v1, 0xe

    aget-byte v0, v0, v1

    aget-wide v1, v9, v0

    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_sigma:[[B

    aget-object v0, v0, v10

    const/16 v3, 0xf

    aget-byte v0, v0, v3

    aget-wide v3, v9, v0

    const/16 v7, 0x9

    const/16 v8, 0xe

    const/4 v5, 0x3

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->G(JJIIII)V

    .line 531
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 548
    .end local v10    # "round":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 550
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    aget-wide v6, v3, v1

    xor-long/2addr v4, v6

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    add-int/lit8 v6, v1, 0x8

    aget-wide v6, v3, v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    .end local v1    # "offset":I
    :cond_1
    return-void
.end method

.method private init()V
    .locals 10

    .line 322
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    if-nez v0, :cond_1

    .line 324
    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 326
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->keyLength:I

    shl-int/2addr v6, v0

    or-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->fanout:I

    shl-int/lit8 v6, v6, 0x10

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->depth:I

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->leafLength:I

    shl-int/lit8 v7, v7, 0x20

    or-int/2addr v6, v7

    or-int/2addr v2, v6

    int-to-long v6, v2

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    .line 328
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    iget-wide v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeOffset:J

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    .line 329
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x2

    aget-wide v5, v2, v4

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->nodeDepth:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->innerHashLength:I

    shl-int/2addr v7, v0

    or-int/2addr v2, v7

    int-to-long v7, v2

    xor-long/2addr v5, v7

    aput-wide v5, v1, v4

    .line 331
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x3

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    .line 333
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x4

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    .line 334
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v5, 0x5

    aget-wide v6, v2, v5

    aput-wide v6, v1, v5

    .line 335
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v6, v1, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    xor-long/2addr v6, v8

    aput-wide v6, v1, v4

    .line 338
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v6, v1, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    xor-long/2addr v6, v8

    aput-wide v6, v1, v5

    .line 341
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x6

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    .line 342
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v5, 0x7

    aget-wide v6, v2, v5

    aput-wide v6, v1, v5

    .line 343
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v6, v1, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v2, v6

    aput-wide v2, v1, v4

    .line 346
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v2, v1, v5

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->personalization:[B

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    xor-long/2addr v2, v6

    aput-wide v2, v1, v5

    .line 349
    :cond_1
    return-void
.end method

.method private initializeInternalState()V
    .locals 6

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    array-length v2, v2

    const/4 v4, 0x4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    sget-object v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    aget-wide v4, v3, v4

    xor-long/2addr v1, v4

    const/16 v3, 0xc

    aput-wide v1, v0, v3

    .line 357
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    sget-object v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x5

    aget-wide v4, v3, v4

    xor-long/2addr v1, v4

    const/16 v3, 0xd

    aput-wide v1, v0, v3

    .line 358
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    sget-object v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x6

    aget-wide v4, v3, v4

    xor-long/2addr v1, v4

    const/16 v3, 0xe

    aput-wide v1, v0, v3

    .line 359
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    sget-object v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->blake2b_IV:[J

    const/4 v4, 0x7

    aget-wide v4, v3, v4

    xor-long/2addr v1, v4

    const/16 v3, 0xf

    aput-wide v1, v0, v3

    .line 360
    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 2

    .line 609
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 612
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 614
    :cond_0
    return-void
.end method

.method public clearSalt()V
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->salt:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 626
    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 9
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

    .line 466
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    .line 471
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 472
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    if-eqz v2, :cond_0

    .line 474
    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 476
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 477
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 479
    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 481
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    .line 482
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 483
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->internalState:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 485
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    ushr-int/lit8 v0, v0, 0x3

    .local v0, "full":I
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    and-int/lit8 v4, v4, 0x7

    .line 486
    .local v4, "partial":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v5, v3, v0, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 487
    if-lez v4, :cond_2

    .line 489
    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 490
    .local v5, "bytes":[B
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    aget-wide v7, v6, v0

    invoke-static {v7, v8, v5, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 491
    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    add-int/2addr v6, p2

    sub-int/2addr v6, v4

    invoke-static {v5, v3, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    .end local v5    # "bytes":[B
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 496
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    .line 498
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    return v1

    .line 468
    .end local v0    # "full":I
    .end local v4    # "partial":I
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 579
    const-string v0, "BLAKE2b"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 600
    const/16 v0, 0x80

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 589
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 4

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 509
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f0:J

    .line 510
    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->f1:J

    .line 511
    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 512
    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 513
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 514
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->chainValue:[J

    .line 515
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 516
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->key:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 521
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->init()V

    .line 522
    return-void
.end method

.method protected setAsLastNode()V
    .locals 1

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->isLastNode:Z

    .line 570
    return-void
.end method

.method public update(B)V
    .locals 7
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    .line 372
    .local v0, "remainingLength":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    rsub-int v0, v1, 0x80

    .line 373
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 375
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v4, 0x80

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 376
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 378
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 380
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    .line 381
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 382
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    aput-byte p1, v2, v3

    .line 383
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 391
    return-void

    .line 387
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    aput-byte p1, v2, v3

    .line 388
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 389
    return-void
.end method

.method public update([BII)V
    .locals 17
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

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-eqz v1, :cond_6

    if-nez v3, :cond_0

    goto :goto_2

    .line 408
    :cond_0
    const/4 v4, 0x0

    .line 410
    .local v4, "remainingLength":I
    iget v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x80

    const/4 v12, 0x0

    if-eqz v5, :cond_3

    .line 414
    iget v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    rsub-int v4, v5, 0x80

    .line 415
    if-ge v4, v3, :cond_2

    .line 417
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v13, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    invoke-static {v1, v2, v5, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iget-wide v13, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    add-long/2addr v13, v10

    iput-wide v13, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 420
    iget-wide v13, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v5, v13, v8

    if-nez v5, :cond_1

    .line 422
    iget-wide v13, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    add-long/2addr v13, v6

    iput-wide v13, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 424
    :cond_1
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    .line 425
    iput v12, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 426
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    invoke-static {v5, v12}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    iget v6, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    iget v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int/2addr v5, v3

    iput v5, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 432
    return-void

    .line 438
    :cond_3
    :goto_0
    add-int v5, v2, v3

    add-int/lit8 v5, v5, -0x80

    .line 439
    .local v5, "blockWiseLastPos":I
    add-int v13, v2, v4

    .local v13, "messagePos":I
    :goto_1
    if-ge v13, v5, :cond_5

    .line 442
    iget-wide v14, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    add-long/2addr v14, v10

    iput-wide v14, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    .line 443
    iget-wide v14, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t0:J

    cmp-long v16, v14, v8

    if-nez v16, :cond_4

    .line 445
    iget-wide v14, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    add-long/2addr v14, v6

    iput-wide v14, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->t1:J

    .line 447
    :cond_4
    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->compress([BI)V

    .line 439
    add-int/lit16 v13, v13, 0x80

    goto :goto_1

    .line 451
    :cond_5
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->buffer:[B

    add-int v7, v2, v3

    sub-int/2addr v7, v13

    invoke-static {v1, v13, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v6, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    add-int v7, v2, v3

    sub-int/2addr v7, v13

    add-int/2addr v6, v7

    iput v6, v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->bufferPos:I

    .line 454
    return-void

    .line 405
    .end local v4    # "remainingLength":I
    .end local v5    # "blockWiseLastPos":I
    .end local v13    # "messagePos":I
    :cond_6
    :goto_2
    return-void
.end method

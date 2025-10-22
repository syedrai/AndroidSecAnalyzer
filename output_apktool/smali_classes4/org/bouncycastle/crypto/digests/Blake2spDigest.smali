.class public Lorg/bouncycastle/crypto/digests/Blake2spDigest;
.super Ljava/lang/Object;
.source "Blake2spDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private final BLAKE2S_BLOCKBYTES:I

.field private final BLAKE2S_KEYBYTES:I

.field private final BLAKE2S_OUTBYTES:I

.field private final PARALLELISM_DEGREE:I

.field private S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

.field private buffer:[B

.field private bufferPos:I

.field private depth:I

.field private digestLength:I

.field private fanout:I

.field private innerHashLength:J

.field private key:[B

.field private keyLength:I

.field private nodeOffset:I

.field private param:[B

.field private root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

.field private salt:[B

.field private final singleByte:[B


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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    .line 12
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    .line 17
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->nodeOffset:I

    .line 20
    const/16 v0, 0x8

    new-array v1, v0, [Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->buffer:[B

    .line 25
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->salt:[B

    .line 26
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    .line 27
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->key:[B

    .line 28
    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->BLAKE2S_BLOCKBYTES:I

    .line 29
    const/16 v1, 0x20

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->BLAKE2S_KEYBYTES:I

    .line 30
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->BLAKE2S_OUTBYTES:I

    .line 31
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->PARALLELISM_DEGREE:I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->singleByte:[B

    .line 38
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    .line 39
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->buffer:[B

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->init([B)V

    .line 41
    return-void
.end method

.method private init([B)V
    .locals 7
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 178
    const/16 v0, 0x20

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 180
    array-length v1, p1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    .line 181
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    if-gt v1, v0, :cond_0

    .line 185
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->key:[B

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 32 bytes are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    .line 189
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->digestLength:I

    .line 192
    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->fanout:I

    .line 193
    const/4 v2, 0x2

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->depth:I

    .line 194
    const-wide/16 v3, 0x20

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->innerHashLength:J

    .line 196
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->digestLength:I

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 197
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    .line 198
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->fanout:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 199
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->depth:I

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 200
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 201
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    const/16 v3, 0xe

    aput-byte v5, v2, v3

    .line 202
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->innerHashLength:J

    long-to-int v5, v4

    int-to-byte v4, v5

    const/16 v5, 0xf

    aput-byte v4, v2, v5

    .line 204
    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>([B[B)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    .line 208
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->nodeOffset:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 209
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    aput-byte v1, v2, v3

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 212
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 213
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    new-instance v4, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->param:[B

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>([B[B)V

    aput-object v4, v3, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->setAsLastNode()V

    .line 217
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->setAsLastNode()V

    .line 219
    if-eqz p1, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    if-lez v2, :cond_3

    .line 221
    const/16 v2, 0x40

    new-array v3, v2, [B

    .line 222
    .local v3, "block":[B
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 225
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 228
    .end local v3    # "block":[B
    .end local v4    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x0

    const/16 v3, 0x8

    aput v3, v0, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 113
    .local v0, "hash":[[B
    const/4 v4, 0x0

    .line 115
    .local v4, "remainingLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 117
    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    mul-int/lit8 v7, v5, 0x40

    if-le v6, v7, :cond_1

    .line 119
    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    mul-int/lit8 v7, v5, 0x40

    sub-int/2addr v6, v7

    .line 121
    .end local v4    # "remainingLength":I
    .local v6, "remainingLength":I
    const/16 v4, 0x40

    if-le v6, v4, :cond_0

    .line 123
    const/16 v6, 0x40

    .line 126
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v4, v4, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->buffer:[B

    mul-int/lit8 v8, v5, 0x40

    invoke-virtual {v4, v7, v8, v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    move v4, v6

    .line 129
    .end local v6    # "remainingLength":I
    .restart local v4    # "remainingLength":I
    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v6, v6, v5

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->doFinal([BI)I

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 134
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v5    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->doFinal([BI)I

    move-result v1

    .line 138
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->reset()V

    .line 140
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "BLAKE2sp"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 172
    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 6

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    .line 147
    const/16 v1, 0x20

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->digestLength:I

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->reset()V

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->reset()V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->setAsLastNode()V

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    const/4 v3, 0x7

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->setAsLastNode()V

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->key:[B

    if-eqz v1, :cond_1

    .line 160
    const/16 v1, 0x40

    new-array v3, v1, [B

    .line 161
    .local v3, "block":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->key:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->keyLength:I

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 164
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v3    # "block":[B
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->update([BII)V

    .line 61
    return-void
.end method

.method public update([BII)V
    .locals 9
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

    .line 66
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    .line 67
    .local v0, "left":I
    rsub-int v1, v0, 0x200

    .line 69
    .local v1, "remainingLength":I
    const/16 v2, 0x8

    const/16 v3, 0x40

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    .line 71
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->buffer:[B

    invoke-static {p1, p2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 75
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->buffer:[B

    mul-int/lit8 v7, v4, 0x40

    invoke-virtual {v5, v6, v7, v3}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "i":I
    :cond_0
    add-int/2addr p2, v1

    .line 78
    sub-int/2addr p3, v1

    .line 79
    const/4 v0, 0x0

    .line 83
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    const/16 v5, 0x200

    if-ge v4, v2, :cond_3

    .line 85
    move v6, p3

    .line 86
    .local v6, "inlen":I
    move v7, p2

    .line 87
    .local v7, "inOffset":I
    mul-int/lit8 v8, v4, 0x40

    add-int/2addr v7, v8

    .line 89
    :goto_2
    if-lt v6, v5, :cond_2

    .line 91
    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    aget-object v8, v8, v4

    invoke-virtual {v8, p1, v7, v3}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 92
    add-int/lit16 v7, v7, 0x200

    .line 93
    add-int/lit16 v6, v6, -0x200

    goto :goto_2

    .line 83
    .end local v6    # "inlen":I
    .end local v7    # "inOffset":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    .end local v4    # "i":I
    :cond_3
    rem-int/lit16 v2, p3, 0x200

    sub-int v2, p3, v2

    add-int/2addr p2, v2

    .line 98
    rem-int/2addr p3, v5

    .line 100
    if-lez p3, :cond_4

    .line 102
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->buffer:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_4
    add-int v2, v0, p3

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2spDigest;->bufferPos:I

    .line 106
    return-void
.end method

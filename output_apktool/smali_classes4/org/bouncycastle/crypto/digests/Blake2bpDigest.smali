.class public Lorg/bouncycastle/crypto/digests/Blake2bpDigest;
.super Ljava/lang/Object;
.source "Blake2bpDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private final BLAKE2B_BLOCKBYTES:I

.field private final BLAKE2B_KEYBYTES:I

.field private final BLAKE2B_OUTBYTES:I

.field private final PARALLELISM_DEGREE:I

.field private S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

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

.field private root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

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

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    .line 13
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    .line 18
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->nodeOffset:I

    .line 21
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    .line 26
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->salt:[B

    .line 27
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    .line 28
    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    .line 29
    const/16 v1, 0x80

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->BLAKE2B_BLOCKBYTES:I

    .line 30
    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->BLAKE2B_KEYBYTES:I

    .line 31
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->BLAKE2B_OUTBYTES:I

    .line 32
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->PARALLELISM_DEGREE:I

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->singleByte:[B

    .line 38
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    .line 39
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->init([B)V

    .line 41
    return-void
.end method

.method private init([B)V
    .locals 9
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 176
    const/16 v0, 0x40

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 178
    array-length v1, p1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    .line 179
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    if-gt v1, v0, :cond_0

    .line 183
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Keys > 64 bytes are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    .line 187
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->fanout:I

    .line 191
    const/4 v2, 0x2

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->depth:I

    .line 192
    const-wide/16 v3, 0x40

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->innerHashLength:J

    .line 194
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 195
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    .line 196
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->fanout:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 197
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->depth:I

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 199
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    const/16 v3, 0x10

    aput-byte v5, v2, v3

    .line 200
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    iget-wide v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->innerHashLength:J

    long-to-int v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x11

    aput-byte v5, v2, v6

    .line 202
    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    const/4 v6, 0x0

    invoke-direct {v2, v6, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([B[B)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    .line 206
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->nodeOffset:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    const/16 v7, 0x8

    invoke-static {v2, v5, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 207
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    aput-byte v1, v2, v3

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 210
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 211
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    new-instance v5, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->param:[B

    invoke-direct {v5, v6, v8}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>([B[B)V

    aput-object v5, v3, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    .line 215
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    .line 217
    if-eqz p1, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    if-lez v2, :cond_3

    .line 219
    const/16 v2, 0x80

    new-array v3, v2, [B

    .line 220
    .local v3, "block":[B
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 223
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 226
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

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 112
    .local v0, "hash":[[B
    const/4 v4, 0x0

    .line 114
    .local v4, "remainingLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 116
    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    mul-int/lit16 v7, v5, 0x80

    if-le v6, v7, :cond_1

    .line 118
    iget v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    mul-int/lit16 v7, v5, 0x80

    sub-int/2addr v6, v7

    .line 121
    .end local v4    # "remainingLength":I
    .local v6, "remainingLength":I
    const/16 v4, 0x80

    if-le v6, v4, :cond_0

    .line 123
    const/16 v6, 0x80

    .line 126
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v4, v4, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    mul-int/lit16 v8, v5, 0x80

    invoke-virtual {v4, v7, v8, v6}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    move v4, v6

    .line 129
    .end local v6    # "remainingLength":I
    .restart local v4    # "remainingLength":I
    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v6, v6, v5

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 133
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    .end local v5    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    move-result v1

    .line 137
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->reset()V

    .line 139
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "BLAKE2bp"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 6

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    .line 146
    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->digestLength:I

    .line 148
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->reset()V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->root:Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    .line 155
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->setAsLastNode()V

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    if-eqz v1, :cond_1

    .line 159
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 160
    .local v3, "block":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->key:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->keyLength:I

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 163
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
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

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->update([BII)V

    .line 60
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

    .line 65
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    .line 66
    .local v0, "left":I
    rsub-int v1, v0, 0x400

    .line 68
    .local v1, "remainingLength":I
    const/4 v2, 0x4

    const/16 v3, 0x80

    if-eqz v0, :cond_1

    if-lt p3, v1, :cond_1

    .line 70
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    invoke-static {p1, p2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 74
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    mul-int/lit16 v7, v4, 0x80

    invoke-virtual {v5, v6, v7, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v4    # "i":I
    :cond_0
    add-int/2addr p2, v1

    .line 77
    sub-int/2addr p3, v1

    .line 78
    const/4 v0, 0x0

    .line 82
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    const/16 v5, 0x200

    if-ge v4, v2, :cond_3

    .line 84
    move v6, p3

    .line 85
    .local v6, "inlen":I
    move v7, p2

    .line 86
    .local v7, "inOffset":I
    mul-int/lit16 v8, v4, 0x80

    add-int/2addr v7, v8

    .line 88
    :goto_2
    if-lt v6, v5, :cond_2

    .line 90
    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->S:[Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    aget-object v8, v8, v4

    invoke-virtual {v8, p1, v7, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 91
    add-int/lit16 v7, v7, 0x200

    .line 92
    add-int/lit16 v6, v6, -0x200

    goto :goto_2

    .line 82
    .end local v6    # "inlen":I
    .end local v7    # "inOffset":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v4    # "i":I
    :cond_3
    rem-int/lit16 v2, p3, 0x200

    sub-int v2, p3, v2

    add-int/2addr p2, v2

    .line 97
    rem-int/2addr p3, v5

    .line 99
    if-lez p3, :cond_4

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->buffer:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :cond_4
    add-int v2, v0, p3

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2bpDigest;->bufferPos:I

    .line 105
    return-void
.end method

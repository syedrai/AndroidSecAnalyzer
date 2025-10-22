.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;
.source "WinternitzOTSignature.java"


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;I)V
    .locals 4
    .param p1, "seed0"    # [B
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed0",
            "digest",
            "w"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    .line 64
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 66
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    .line 72
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    .line 74
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    .line 75
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    .line 78
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v0, v0, [B

    .line 82
    .local v0, "dummy":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    aput-object v3, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private hashPrivateKeyBlock(II[BI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "rounds"    # I
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "rounds",
            "buf",
            "off"
        }
    .end annotation

    .line 331
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v0, v0, p1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v2, v2, p1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 338
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 340
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    .line 342
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-interface {v0, p3, p4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 343
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0

    .line 346
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2
    .param p1, "intValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intValue"
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    .line 320
    .local v0, "log":I
    const/4 v1, 0x2

    .line 321
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 323
    shl-int/lit8 v1, v1, 0x1

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return v0
.end method

.method public getPrivateKey()[[B
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 6

    .line 105
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    .line 107
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 108
    .local v1, "pos":I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    .line 110
    .local v2, "rounds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v3, v4, :cond_0

    .line 113
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    .line 114
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    add-int/2addr v1, v4

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 119
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v3, v3, [B

    .line 120
    .local v3, "tmp":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 121
    return-object v3
.end method

.method public getSignature([B)[B
    .locals 26
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v2, v2, v3

    new-array v2, v2, [B

    .line 132
    .local v2, "sign":[B
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v3, v3, [B

    .line 133
    .local v3, "hash":[B
    const/4 v4, 0x0

    .line 134
    .local v4, "counter":I
    const/4 v5, 0x0

    .line 135
    .local v5, "c":I
    const/4 v6, 0x0

    .line 137
    .local v6, "test":I
    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v1

    const/4 v9, 0x0

    invoke-interface {v7, v1, v9, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v3, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 140
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v8, 0x8

    rem-int v7, v8, v7

    const/4 v10, 0x1

    if-nez v7, :cond_3

    .line 142
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int/2addr v8, v7

    .line 143
    .local v8, "d":I
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int v7, v10, v7

    sub-int/2addr v7, v10

    .line 146
    .local v7, "k":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v3

    if-ge v9, v10, :cond_1

    .line 148
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v8, :cond_0

    .line 150
    aget-byte v11, v3, v9

    and-int v6, v11, v7

    .line 151
    add-int/2addr v5, v6

    .line 152
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v11, v11, v4

    invoke-direct {v0, v4, v6, v2, v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    .line 153
    aget-byte v11, v3, v9

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v9

    .line 154
    add-int/lit8 v4, v4, 0x1

    .line 148
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 146
    .end local v10    # "j":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 158
    .end local v9    # "i":I
    :cond_1
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v9, v10

    sub-int/2addr v9, v5

    .line 159
    .end local v5    # "c":I
    .local v9, "c":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v5, v10, :cond_2

    .line 161
    and-int v6, v9, v7

    .line 162
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v10, v10, v4

    invoke-direct {v0, v4, v6, v2, v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    .line 163
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v9, v10

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 159
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v5, v10

    goto :goto_2

    .line 166
    .end local v5    # "i":I
    .end local v7    # "k":I
    .end local v8    # "d":I
    :cond_2
    move-object/from16 v20, v3

    move v5, v9

    goto/16 :goto_11

    .line 167
    .end local v9    # "c":I
    .local v5, "c":I
    :cond_3
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v7, v8, :cond_a

    .line 169
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int/2addr v7, v9

    .line 170
    .local v7, "d":I
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int v9, v10, v9

    sub-int/2addr v9, v10

    .line 172
    .local v9, "k":I
    const/4 v10, 0x0

    .line 175
    .local v10, "ii":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v7, :cond_6

    .line 177
    const-wide/16 v12, 0x0

    .line 178
    .local v12, "big8":J
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v14, v15, :cond_4

    .line 180
    aget-byte v15, v3, v10

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v16, v14, 0x3

    shl-int v15, v15, v16

    move/from16 v17, v9

    .end local v9    # "k":I
    .local v17, "k":I
    int-to-long v8, v15

    xor-long/2addr v12, v8

    .line 181
    add-int/lit8 v10, v10, 0x1

    .line 178
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v17

    const/16 v8, 0x8

    goto :goto_4

    .end local v17    # "k":I
    .restart local v9    # "k":I
    :cond_4
    move/from16 v17, v9

    .line 183
    .end local v9    # "k":I
    .end local v14    # "j":I
    .restart local v17    # "k":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    const/16 v9, 0x8

    if-ge v8, v9, :cond_5

    .line 185
    long-to-int v14, v12

    and-int v6, v14, v17

    .line 186
    add-int/2addr v5, v6

    .line 187
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v14, v14, v4

    invoke-direct {v0, v4, v6, v2, v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    .line 188
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v12, v14

    .line 189
    add-int/lit8 v4, v4, 0x1

    .line 183
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 175
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    const/16 v8, 0x8

    goto :goto_3

    .end local v12    # "big8":J
    .end local v17    # "k":I
    .restart local v9    # "k":I
    :cond_6
    move/from16 v17, v9

    .line 193
    .end local v9    # "k":I
    .end local v11    # "i":I
    .restart local v17    # "k":I
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v8, v9

    .line 194
    .end local v7    # "d":I
    .local v8, "d":I
    const-wide/16 v11, 0x0

    .line 195
    .local v11, "big8":J
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    if-ge v7, v8, :cond_7

    .line 197
    aget-byte v9, v3, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v13, v7, 0x3

    shl-int/2addr v9, v13

    int-to-long v13, v9

    xor-long/2addr v11, v13

    .line 198
    add-int/lit8 v10, v10, 0x1

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 200
    .end local v7    # "j":I
    :cond_7
    shl-int/lit8 v7, v8, 0x3

    .line 201
    .end local v8    # "d":I
    .local v7, "d":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_7
    if-ge v8, v7, :cond_8

    .line 203
    long-to-int v9, v11

    and-int v6, v9, v17

    .line 204
    add-int/2addr v5, v6

    .line 205
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v9, v9, v4

    invoke-direct {v0, v4, v6, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    .line 206
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v11, v9

    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 201
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v8, v9

    goto :goto_7

    .line 211
    .end local v8    # "j":I
    :cond_8
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v8, v9

    sub-int/2addr v8, v5

    .line 212
    .end local v5    # "c":I
    .local v8, "c":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v5, v9, :cond_9

    .line 214
    and-int v6, v8, v17

    .line 215
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v9, v9, v4

    invoke-direct {v0, v4, v6, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    .line 216
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v8, v9

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 212
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v5, v9

    goto :goto_8

    .line 219
    .end local v5    # "i":I
    .end local v7    # "d":I
    .end local v10    # "ii":I
    .end local v11    # "big8":J
    .end local v17    # "k":I
    :cond_9
    move-object/from16 v20, v3

    move v5, v8

    goto/16 :goto_11

    .line 220
    .end local v8    # "c":I
    .local v5, "c":I
    :cond_a
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v8, 0x39

    if-ge v7, v8, :cond_13

    .line 222
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    sub-int/2addr v7, v8

    .line 223
    .restart local v7    # "d":I
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int v8, v10, v8

    sub-int/2addr v8, v10

    .line 224
    .local v8, "k":I
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v10, v10, [B

    .line 226
    .local v10, "hlp":[B
    const/4 v11, 0x0

    .line 230
    .local v11, "r":I
    :goto_9
    if-gt v11, v7, :cond_d

    .line 232
    ushr-int/lit8 v16, v11, 0x3

    .line 233
    .local v16, "s":I
    rem-int/lit8 v17, v11, 0x8

    .line 234
    .local v17, "rest":I
    const-wide/16 v18, 0x1

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v11, v12

    .line 235
    add-int/lit8 v12, v11, 0x7

    ushr-int/lit8 v12, v12, 0x3

    .line 236
    .local v12, "f":I
    const-wide/16 v20, 0x0

    .line 237
    .local v20, "big8":J
    const/4 v13, 0x0

    .line 238
    .local v13, "ii":I
    move/from16 v22, v16

    move/from16 v14, v22

    const-wide/16 v22, 0x0

    .restart local v14    # "j":I
    :goto_a
    if-ge v14, v12, :cond_b

    .line 240
    aget-byte v15, v3, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v24, v13, 0x3

    shl-int v15, v15, v24

    move-object/from16 v25, v10

    .end local v10    # "hlp":[B
    .local v25, "hlp":[B
    int-to-long v9, v15

    xor-long v20, v20, v9

    .line 241
    add-int/lit8 v13, v13, 0x1

    .line 238
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v25

    const/4 v9, 0x0

    goto :goto_a

    .end local v25    # "hlp":[B
    .restart local v10    # "hlp":[B
    :cond_b
    move-object/from16 v25, v10

    .line 244
    .end local v10    # "hlp":[B
    .end local v14    # "j":I
    .restart local v25    # "hlp":[B
    ushr-long v9, v20, v17

    .line 245
    .end local v20    # "big8":J
    .local v9, "big8":J
    int-to-long v14, v8

    and-long/2addr v14, v9

    .line 246
    .local v14, "test8":J
    move-object/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "hash":[B
    .end local v4    # "counter":I
    .local v20, "hash":[B
    .local v21, "counter":I
    int-to-long v3, v5

    add-long/2addr v3, v14

    long-to-int v5, v3

    .line 248
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v21

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move-object/from16 v1, v25

    move/from16 v25, v5

    const/4 v5, 0x0

    .end local v5    # "c":I
    .local v1, "hlp":[B
    .local v25, "c":I
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :goto_b
    cmp-long v3, v14, v22

    if-lez v3, :cond_c

    .line 251
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 252
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 253
    sub-long v14, v14, v18

    goto :goto_b

    .line 255
    :cond_c
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v4, v21, v3

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    add-int/lit8 v4, v21, 0x1

    move-object v10, v1

    move-object/from16 v3, v20

    move/from16 v5, v25

    const/4 v9, 0x0

    move-object/from16 v1, p1

    .end local v21    # "counter":I
    .restart local v4    # "counter":I
    goto :goto_9

    .line 260
    .end local v1    # "hlp":[B
    .end local v9    # "big8":J
    .end local v12    # "f":I
    .end local v13    # "ii":I
    .end local v14    # "test8":J
    .end local v16    # "s":I
    .end local v17    # "rest":I
    .end local v20    # "hash":[B
    .end local v25    # "c":I
    .restart local v3    # "hash":[B
    .restart local v5    # "c":I
    .restart local v10    # "hlp":[B
    :cond_d
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object v1, v10

    const-wide/16 v18, 0x1

    const-wide/16 v22, 0x0

    .end local v3    # "hash":[B
    .end local v4    # "counter":I
    .end local v10    # "hlp":[B
    .restart local v1    # "hlp":[B
    .restart local v20    # "hash":[B
    .restart local v21    # "counter":I
    ushr-int/lit8 v3, v11, 0x3

    .line 261
    .local v3, "s":I
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v3, v4, :cond_10

    .line 263
    rem-int/lit8 v4, v11, 0x8

    .line 264
    .local v4, "rest":I
    const-wide/16 v9, 0x0

    .line 265
    .restart local v9    # "big8":J
    const/4 v12, 0x0

    .line 266
    .local v12, "ii":I
    move v13, v3

    .local v13, "j":I
    :goto_c
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v13, v14, :cond_e

    .line 268
    aget-byte v14, v20, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v12, 0x3

    shl-int/2addr v14, v15

    int-to-long v14, v14

    xor-long/2addr v9, v14

    .line 269
    add-int/lit8 v12, v12, 0x1

    .line 266
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 272
    .end local v13    # "j":I
    :cond_e
    ushr-long/2addr v9, v4

    .line 273
    int-to-long v13, v8

    and-long/2addr v13, v9

    .line 274
    .local v13, "test8":J
    move v15, v3

    move/from16 v16, v4

    .end local v3    # "s":I
    .end local v4    # "rest":I
    .local v15, "s":I
    .local v16, "rest":I
    int-to-long v3, v5

    add-long/2addr v3, v13

    long-to-int v5, v3

    .line 276
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v21

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "c":I
    .local v17, "c":I
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :goto_d
    cmp-long v3, v13, v22

    if-lez v3, :cond_f

    .line 279
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 280
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 281
    sub-long v13, v13, v18

    goto :goto_d

    .line 283
    :cond_f
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v4, v21, v3

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    add-int/lit8 v4, v21, 0x1

    move/from16 v5, v17

    .end local v21    # "counter":I
    .local v4, "counter":I
    goto :goto_e

    .line 261
    .end local v4    # "counter":I
    .end local v9    # "big8":J
    .end local v12    # "ii":I
    .end local v13    # "test8":J
    .end local v15    # "s":I
    .end local v16    # "rest":I
    .end local v17    # "c":I
    .restart local v3    # "s":I
    .restart local v5    # "c":I
    .restart local v21    # "counter":I
    :cond_10
    move v15, v3

    .end local v3    # "s":I
    .restart local v15    # "s":I
    move/from16 v4, v21

    .line 287
    .end local v21    # "counter":I
    .restart local v4    # "counter":I
    :goto_e
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v9

    sub-int/2addr v3, v5

    .line 288
    .end local v5    # "c":I
    .local v3, "c":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v5, v9, :cond_12

    .line 290
    and-int v9, v3, v8

    int-to-long v9, v9

    .line 292
    .local v9, "test8":J
    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v12, v12, v4

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v14, 0x0

    invoke-static {v12, v14, v1, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :goto_10
    cmp-long v12, v9, v22

    if-lez v12, :cond_11

    .line 296
    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v13, v1

    invoke-interface {v12, v1, v14, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 297
    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v1, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 298
    sub-long v9, v9, v18

    goto :goto_10

    .line 300
    :cond_11
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v12, v12, v4

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v1, v14, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v12

    .line 302
    add-int/lit8 v4, v4, 0x1

    .line 288
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v5, v12

    goto :goto_f

    .end local v9    # "test8":J
    :cond_12
    move v5, v3

    goto :goto_11

    .line 220
    .end local v1    # "hlp":[B
    .end local v7    # "d":I
    .end local v8    # "k":I
    .end local v11    # "r":I
    .end local v15    # "s":I
    .end local v20    # "hash":[B
    .local v3, "hash":[B
    .local v5, "c":I
    :cond_13
    move-object/from16 v20, v3

    .line 306
    .end local v3    # "hash":[B
    .restart local v20    # "hash":[B
    :goto_11
    return-object v2
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;
.source "WinternitzOTSVerify.java"


# instance fields
.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "w"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    .line 35
    return-void
.end method

.method private hashSignatureBlock([BII[BI)V
    .locals 2
    .param p1, "sig"    # [B
    .param p2, "sigOff"    # I
    .param p3, "rounds"    # I
    .param p4, "buf"    # [B
    .param p5, "bufOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigOff",
            "rounds",
            "buf",
            "bufOff"
        }
    .end annotation

    .line 284
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 286
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {p1, p2, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 291
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 293
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_1

    .line 295
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p4, p5, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0

    .line 299
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .locals 30
    .param p1, "message"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "signature"
        }
    .end annotation

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v7, v2, [B

    .line 64
    .local v7, "hash":[B
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v6

    const/4 v8, 0x0

    invoke-interface {v2, v6, v8, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 65
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v7, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 67
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v9, v2, v3

    .line 68
    .local v9, "size":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v9, v2

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v10

    .line 69
    .local v10, "logs":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v10

    sub-int/2addr v2, v4

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int v11, v9, v2

    .line 71
    .local v11, "keysize":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v12, v2, v11

    .line 73
    .local v12, "testKeySize":I
    array-length v2, v1

    if-eq v12, v2, :cond_0

    .line 75
    const/4 v2, 0x0

    return-object v2

    .line 78
    :cond_0
    const/4 v2, 0x1

    new-array v4, v12, [B

    .line 80
    .local v4, "testKey":[B
    const/4 v3, 0x0

    .line 81
    .local v3, "c":I
    const/4 v5, 0x0

    .line 84
    .local v5, "counter":I
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v14, 0x8

    rem-int v13, v14, v13

    if-nez v13, :cond_4

    .line 86
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v14, v13

    .line 87
    .local v14, "d":I
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v13, v2, v13

    sub-int/2addr v13, v2

    .line 90
    .local v13, "k":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_0
    array-length v2, v7

    if-ge v15, v2, :cond_2

    .line 92
    const/4 v2, 0x0

    move/from16 v16, v5

    .end local v5    # "counter":I
    .local v2, "j":I
    .local v16, "counter":I
    :goto_1
    if-ge v2, v14, :cond_1

    .line 94
    aget-byte v5, v7, v15

    and-int v17, v5, v13

    .line 95
    .local v17, "test":I
    add-int v18, v3, v17

    .line 96
    .end local v3    # "c":I
    .local v18, "c":I
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v3, v3, v16

    move v5, v2

    move v2, v3

    .end local v2    # "j":I
    .local v5, "j":I
    sub-int v3, v13, v17

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v8, v8, v16

    move/from16 v29, v8

    move v8, v5

    move/from16 v5, v29

    .end local v5    # "j":I
    .local v8, "j":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    .line 97
    aget-byte v1, v7, v15

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v15

    .line 98
    add-int/lit8 v16, v16, 0x1

    .line 92
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v1, p2

    move/from16 v3, v18

    const/4 v8, 0x0

    .end local v8    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .end local v17    # "test":I
    .end local v18    # "c":I
    .restart local v3    # "c":I
    :cond_1
    move v8, v2

    .line 90
    .end local v2    # "j":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move/from16 v5, v16

    const/4 v8, 0x0

    goto :goto_0

    .line 102
    .end local v15    # "i":I
    .end local v16    # "counter":I
    .local v5, "counter":I
    :cond_2
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v1, v9, v1

    sub-int/2addr v1, v3

    .line 103
    .end local v3    # "c":I
    .local v1, "c":I
    const/4 v2, 0x0

    move v15, v1

    move v8, v2

    move/from16 v16, v5

    .end local v1    # "c":I
    .end local v5    # "counter":I
    .local v8, "i":I
    .local v15, "c":I
    .restart local v16    # "counter":I
    :goto_2
    if-ge v8, v10, :cond_3

    .line 105
    and-int v17, v15, v13

    .line 106
    .restart local v17    # "test":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v16, v1

    sub-int v3, v13, v17

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v16, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    .line 107
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v15, v1

    .line 108
    add-int/lit8 v16, v16, 0x1

    .line 103
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v8, v1

    goto :goto_2

    .line 110
    .end local v8    # "i":I
    .end local v13    # "k":I
    .end local v14    # "d":I
    .end local v17    # "test":I
    :cond_3
    move-object/from16 v1, p2

    move-object v6, v4

    move v3, v15

    move/from16 v5, v16

    goto/16 :goto_11

    .line 111
    .end local v15    # "c":I
    .end local v16    # "counter":I
    .restart local v3    # "c":I
    .restart local v5    # "counter":I
    :cond_4
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v1, v14, :cond_b

    .line 113
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v8, v1, v8

    .line 114
    .local v8, "d":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v1, v2, v1

    add-int/lit8 v13, v1, -0x1

    .line 116
    .restart local v13    # "k":I
    const/4 v1, 0x0

    .line 119
    .local v1, "ii":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_3
    if-ge v15, v8, :cond_7

    .line 121
    const-wide/16 v16, 0x0

    .line 122
    .local v16, "big8":J
    const/4 v2, 0x0

    move-wide/from16 v17, v16

    move/from16 v16, v1

    .end local v1    # "ii":I
    .restart local v2    # "j":I
    .local v16, "ii":I
    .local v17, "big8":J
    :goto_4
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v2, v1, :cond_5

    .line 124
    aget-byte v1, v7, v16

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v19, v2, 0x3

    shl-int v1, v1, v19

    move/from16 v20, v15

    .end local v15    # "i":I
    .local v20, "i":I
    int-to-long v14, v1

    xor-long v17, v17, v14

    .line 125
    add-int/lit8 v16, v16, 0x1

    .line 122
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v20

    const/16 v14, 0x8

    goto :goto_4

    .end local v20    # "i":I
    .restart local v15    # "i":I
    :cond_5
    move/from16 v20, v15

    .line 127
    .end local v2    # "j":I
    .end local v15    # "i":I
    .restart local v20    # "i":I
    const/4 v1, 0x0

    move v14, v1

    move v15, v5

    .end local v5    # "counter":I
    .local v14, "j":I
    .local v15, "counter":I
    :goto_5
    const/16 v1, 0x8

    if-ge v14, v1, :cond_6

    .line 129
    int-to-long v1, v13

    and-long v1, v17, v1

    long-to-int v2, v1

    .line 130
    .local v2, "test":I
    add-int v21, v3, v2

    .line 131
    .end local v3    # "c":I
    .local v21, "c":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v1, v1, v15

    sub-int v3, v13, v2

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v5, v15

    move/from16 v19, v2

    const/16 v22, 0x8

    move v2, v1

    move-object/from16 v1, p2

    .end local v2    # "test":I
    .local v19, "test":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    .line 132
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v17, v17, v1

    .line 133
    add-int/lit8 v15, v15, 0x1

    .line 127
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v21

    goto :goto_5

    .end local v19    # "test":I
    .end local v21    # "c":I
    .restart local v3    # "c":I
    :cond_6
    const/16 v22, 0x8

    .line 119
    .end local v14    # "j":I
    add-int/lit8 v1, v20, 0x1

    move v5, v15

    const/16 v14, 0x8

    move v15, v1

    move/from16 v1, v16

    .end local v20    # "i":I
    .local v1, "i":I
    goto :goto_3

    .end local v16    # "ii":I
    .end local v17    # "big8":J
    .local v1, "ii":I
    .restart local v5    # "counter":I
    .local v15, "i":I
    :cond_7
    move/from16 v20, v15

    .line 137
    .end local v15    # "i":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int/2addr v2, v14

    .line 138
    .end local v8    # "d":I
    .local v2, "d":I
    const-wide/16 v14, 0x0

    .line 139
    .local v14, "big8":J
    const/4 v8, 0x0

    move/from16 v29, v8

    move v8, v1

    move/from16 v1, v29

    .local v1, "j":I
    .local v8, "ii":I
    :goto_6
    if-ge v1, v2, :cond_8

    .line 141
    move/from16 v16, v1

    .end local v1    # "j":I
    .local v16, "j":I
    aget-byte v1, v7, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v17, v16, 0x3

    shl-int v1, v1, v17

    move/from16 v17, v2

    .end local v2    # "d":I
    .local v17, "d":I
    int-to-long v1, v1

    xor-long/2addr v14, v1

    .line 142
    add-int/lit8 v8, v8, 0x1

    .line 139
    add-int/lit8 v1, v16, 0x1

    move/from16 v2, v17

    .end local v16    # "j":I
    .restart local v1    # "j":I
    goto :goto_6

    .end local v17    # "d":I
    .restart local v2    # "d":I
    :cond_8
    move/from16 v16, v1

    move/from16 v17, v2

    .line 144
    .end local v1    # "j":I
    .end local v2    # "d":I
    .restart local v17    # "d":I
    shl-int/lit8 v1, v17, 0x3

    .line 145
    .end local v17    # "d":I
    .local v1, "d":I
    const/4 v2, 0x0

    move-wide/from16 v16, v14

    move v14, v2

    move v15, v5

    .end local v5    # "counter":I
    .local v14, "j":I
    .local v15, "counter":I
    .local v16, "big8":J
    :goto_7
    if-ge v14, v1, :cond_9

    .line 147
    move v5, v1

    .end local v1    # "d":I
    .local v5, "d":I
    int-to-long v1, v13

    and-long v1, v16, v1

    long-to-int v2, v1

    .line 148
    .local v2, "test":I
    add-int v18, v3, v2

    .line 149
    .end local v3    # "c":I
    .restart local v18    # "c":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v1, v1, v15

    sub-int v3, v13, v2

    move/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v1, v1, v15

    move/from16 v20, v2

    move/from16 v2, v19

    move/from16 v19, v5

    move v5, v1

    move-object/from16 v1, p2

    .end local v2    # "test":I
    .end local v5    # "d":I
    .local v19, "d":I
    .local v20, "test":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    .line 150
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v16, v16, v1

    .line 151
    add-int/lit8 v15, v15, 0x1

    .line 145
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v14, v1

    move/from16 v3, v18

    move/from16 v1, v19

    goto :goto_7

    .end local v18    # "c":I
    .end local v19    # "d":I
    .end local v20    # "test":I
    .restart local v1    # "d":I
    .restart local v3    # "c":I
    :cond_9
    move/from16 v19, v1

    .line 155
    .end local v1    # "d":I
    .end local v14    # "j":I
    .restart local v19    # "d":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v1, v9, v1

    sub-int/2addr v1, v3

    .line 156
    .end local v3    # "c":I
    .local v1, "c":I
    const/4 v2, 0x0

    move v14, v2

    move/from16 v18, v15

    move v15, v1

    .end local v1    # "c":I
    .local v14, "i":I
    .local v15, "c":I
    .local v18, "counter":I
    :goto_8
    if-ge v14, v10, :cond_a

    .line 158
    and-int v20, v15, v13

    .line 159
    .restart local v20    # "test":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v18, v1

    sub-int v3, v13, v20

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v18, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    .line 160
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v15, v2

    .line 161
    add-int/lit8 v18, v18, 0x1

    .line 156
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v14, v2

    goto :goto_8

    .end local v20    # "test":I
    :cond_a
    move-object/from16 v1, p2

    .line 163
    .end local v8    # "ii":I
    .end local v13    # "k":I
    .end local v14    # "i":I
    .end local v16    # "big8":J
    .end local v19    # "d":I
    move-object v6, v4

    move v3, v15

    move/from16 v5, v18

    goto/16 :goto_11

    .line 164
    .end local v15    # "c":I
    .end local v18    # "counter":I
    .restart local v3    # "c":I
    .local v5, "counter":I
    :cond_b
    move-object/from16 v1, p2

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v13, 0x39

    if-ge v8, v13, :cond_14

    .line 166
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v8, v8, 0x3

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    sub-int/2addr v8, v13

    .line 167
    .local v8, "d":I
    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v13, v2, v13

    sub-int/2addr v13, v2

    .line 168
    .restart local v13    # "k":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v2, v2, [B

    .line 170
    .local v2, "hlp":[B
    const/4 v14, 0x0

    .line 174
    .local v14, "r":I
    :goto_9
    if-gt v14, v8, :cond_e

    .line 176
    ushr-int/lit8 v17, v14, 0x3

    .line 177
    .local v17, "s":I
    rem-int/lit8 v18, v14, 0x8

    .line 178
    .local v18, "rest":I
    const-wide/16 v19, 0x1

    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v14, v15

    .line 179
    add-int/lit8 v15, v14, 0x7

    ushr-int/lit8 v15, v15, 0x3

    .line 180
    .local v15, "f":I
    const-wide/16 v21, 0x0

    .line 181
    .local v21, "big8":J
    const/16 v16, 0x0

    .line 182
    .local v16, "ii":I
    move/from16 v23, v17

    move/from16 v29, v23

    move/from16 v23, v5

    move/from16 v5, v29

    .local v5, "j":I
    .local v23, "counter":I
    :goto_a
    if-ge v5, v15, :cond_c

    .line 184
    move/from16 v24, v5

    .end local v5    # "j":I
    .local v24, "j":I
    aget-byte v5, v7, v24

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v25, v16, 0x3

    shl-int v5, v5, v25

    int-to-long v5, v5

    xor-long v21, v21, v5

    .line 185
    add-int/lit8 v16, v16, 0x1

    .line 182
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v6, p1

    .end local v24    # "j":I
    .restart local v5    # "j":I
    goto :goto_a

    :cond_c
    move/from16 v24, v5

    .line 188
    .end local v5    # "j":I
    ushr-long v5, v21, v18

    .line 189
    .end local v21    # "big8":J
    .local v5, "big8":J
    move-wide/from16 v21, v5

    .end local v5    # "big8":J
    .restart local v21    # "big8":J
    int-to-long v5, v13

    and-long v5, v21, v5

    .line 190
    .local v5, "test8":J
    move-wide/from16 v24, v5

    .end local v5    # "test8":J
    .local v24, "test8":J
    int-to-long v5, v3

    add-long v5, v5, v24

    long-to-int v3, v5

    .line 192
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v5, v23

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "c":I
    .local v26, "c":I
    invoke-static {v1, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v5, v24

    .line 194
    .end local v24    # "test8":J
    .restart local v5    # "test8":J
    :goto_b
    move-object/from16 v24, v4

    .end local v4    # "testKey":[B
    .local v24, "testKey":[B
    int-to-long v3, v13

    cmp-long v25, v5, v3

    if-gez v25, :cond_d

    .line 196
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v2

    move-wide/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "test8":J
    .local v27, "test8":J
    invoke-interface {v3, v2, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 197
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 198
    add-long v3, v27, v19

    move-wide v5, v3

    move-object/from16 v4, v24

    const/4 v3, 0x0

    .end local v27    # "test8":J
    .local v3, "test8":J
    goto :goto_b

    .line 201
    .end local v3    # "test8":J
    .restart local v5    # "test8":J
    :cond_d
    move-wide/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "test8":J
    .restart local v27    # "test8":J
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v3, v3, v23

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move-object/from16 v6, v24

    .end local v24    # "testKey":[B
    .local v6, "testKey":[B
    invoke-static {v2, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    add-int/lit8 v5, v23, 0x1

    move-object v4, v6

    move/from16 v3, v26

    move-object/from16 v6, p1

    .end local v23    # "counter":I
    .local v5, "counter":I
    goto :goto_9

    .line 206
    .end local v6    # "testKey":[B
    .end local v15    # "f":I
    .end local v16    # "ii":I
    .end local v17    # "s":I
    .end local v18    # "rest":I
    .end local v21    # "big8":J
    .end local v26    # "c":I
    .end local v27    # "test8":J
    .local v3, "c":I
    .restart local v4    # "testKey":[B
    :cond_e
    move-object v6, v4

    move/from16 v23, v5

    const-wide/16 v19, 0x1

    .end local v4    # "testKey":[B
    .end local v5    # "counter":I
    .restart local v6    # "testKey":[B
    .restart local v23    # "counter":I
    ushr-int/lit8 v4, v14, 0x3

    .line 207
    .local v4, "s":I
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v4, v5, :cond_11

    .line 209
    rem-int/lit8 v5, v14, 0x8

    .line 210
    .local v5, "rest":I
    const-wide/16 v15, 0x0

    .line 211
    .local v15, "big8":J
    const/16 v17, 0x0

    .line 212
    .local v17, "ii":I
    move/from16 v18, v4

    move/from16 v29, v18

    move/from16 v4, v29

    .local v4, "j":I
    .local v18, "s":I
    :goto_c
    move/from16 v21, v5

    .end local v5    # "rest":I
    .local v21, "rest":I
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v4, v5, :cond_f

    .line 214
    aget-byte v5, v7, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v22, v17, 0x3

    shl-int v5, v5, v22

    move/from16 v22, v4

    .end local v4    # "j":I
    .local v22, "j":I
    int-to-long v4, v5

    xor-long/2addr v15, v4

    .line 215
    add-int/lit8 v17, v17, 0x1

    .line 212
    add-int/lit8 v4, v22, 0x1

    move/from16 v5, v21

    .end local v22    # "j":I
    .restart local v4    # "j":I
    goto :goto_c

    :cond_f
    move/from16 v22, v4

    .line 218
    .end local v4    # "j":I
    ushr-long v4, v15, v21

    .line 219
    .end local v15    # "big8":J
    .local v4, "big8":J
    move-wide v15, v4

    .end local v4    # "big8":J
    .restart local v15    # "big8":J
    int-to-long v4, v13

    and-long/2addr v4, v15

    .line 220
    .local v4, "test8":J
    move-wide/from16 v24, v4

    .end local v4    # "test8":J
    .local v24, "test8":J
    int-to-long v4, v3

    add-long v4, v4, v24

    long-to-int v3, v4

    .line 222
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v23, v4

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "c":I
    .local v22, "c":I
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v4, v24

    .line 224
    .end local v24    # "test8":J
    .restart local v4    # "test8":J
    :goto_d
    move-wide/from16 v24, v4

    .end local v4    # "test8":J
    .restart local v24    # "test8":J
    int-to-long v3, v13

    cmp-long v5, v24, v3

    if-gez v5, :cond_10

    .line 226
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 227
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 228
    add-long v3, v24, v19

    move-wide v4, v3

    const/4 v3, 0x0

    .end local v24    # "test8":J
    .local v3, "test8":J
    goto :goto_d

    .line 231
    .end local v3    # "test8":J
    .restart local v24    # "test8":J
    :cond_10
    const/4 v5, 0x0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v3, v3, v23

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v2, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    add-int/lit8 v5, v23, 0x1

    move/from16 v3, v22

    .end local v23    # "counter":I
    .local v5, "counter":I
    goto :goto_e

    .line 207
    .end local v5    # "counter":I
    .end local v15    # "big8":J
    .end local v17    # "ii":I
    .end local v18    # "s":I
    .end local v21    # "rest":I
    .end local v22    # "c":I
    .end local v24    # "test8":J
    .local v3, "c":I
    .local v4, "s":I
    .restart local v23    # "counter":I
    :cond_11
    move/from16 v18, v4

    .end local v4    # "s":I
    .restart local v18    # "s":I
    move/from16 v5, v23

    .line 235
    .end local v23    # "counter":I
    .restart local v5    # "counter":I
    :goto_e
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v4, v9, v4

    sub-int/2addr v4, v3

    .line 236
    .end local v3    # "c":I
    .local v4, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v10, :cond_13

    .line 238
    and-int v15, v4, v13

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "i":I
    .end local v4    # "c":I
    .local v16, "i":I
    .local v17, "c":I
    int-to-long v3, v15

    .line 240
    .local v3, "test8":J
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v15, v15, v5

    move-wide/from16 v21, v3

    .end local v3    # "test8":J
    .local v21, "test8":J
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    const/4 v4, 0x0

    invoke-static {v1, v15, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :goto_10
    move v3, v5

    .end local v5    # "counter":I
    .local v3, "counter":I
    int-to-long v4, v13

    cmp-long v15, v21, v4

    if-gez v15, :cond_12

    .line 244
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v2

    const/4 v15, 0x0

    invoke-interface {v4, v2, v15, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 245
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v15}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 246
    add-long v21, v21, v19

    move v5, v3

    const/4 v4, 0x0

    goto :goto_10

    .line 249
    :cond_12
    const/4 v15, 0x0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v5, v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v2, v15, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int v4, v17, v4

    .line 251
    .end local v17    # "c":I
    .restart local v4    # "c":I
    add-int/lit8 v5, v3, 0x1

    .line 236
    .end local v3    # "counter":I
    .restart local v5    # "counter":I
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v3, v16, v3

    .end local v16    # "i":I
    .local v3, "i":I
    goto :goto_f

    .end local v21    # "test8":J
    :cond_13
    move/from16 v16, v3

    move/from16 v17, v4

    move v3, v5

    .end local v4    # "c":I
    .end local v5    # "counter":I
    .local v3, "counter":I
    .restart local v16    # "i":I
    .restart local v17    # "c":I
    move/from16 v3, v17

    goto :goto_11

    .line 164
    .end local v2    # "hlp":[B
    .end local v6    # "testKey":[B
    .end local v8    # "d":I
    .end local v13    # "k":I
    .end local v14    # "r":I
    .end local v16    # "i":I
    .end local v17    # "c":I
    .end local v18    # "s":I
    .local v3, "c":I
    .local v4, "testKey":[B
    .restart local v5    # "counter":I
    :cond_14
    move-object v6, v4

    .line 255
    .end local v4    # "testKey":[B
    .restart local v6    # "testKey":[B
    :goto_11
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v6

    const/4 v15, 0x0

    invoke-interface {v2, v6, v15, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 257
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v2, v2, [B

    .line 258
    .local v2, "TKey":[B
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v15}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 259
    return-object v2
.end method

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

    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, "log":I
    const/4 v1, 0x2

    .line 274
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 276
    shl-int/lit8 v1, v1, 0x1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return v0
.end method

.method public getSignatureLength()I
    .locals 5

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 43
    .local v0, "mdsize":I
    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v1, v2

    .line 44
    .local v1, "size":I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    .line 45
    .local v2, "logs":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 47
    mul-int v3, v0, v1

    return v3
.end method

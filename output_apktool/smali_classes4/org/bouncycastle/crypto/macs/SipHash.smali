.class public Lorg/bouncycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;
.source "SipHash.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field protected final c:I

.field protected final d:I

.field protected k0:J

.field protected k1:J

.field protected m:J

.field protected v0:J

.field protected v1:J

.field protected v2:J

.field protected v3:J

.field protected wordCount:I

.field protected wordPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 28
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "c"    # I
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "d"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 28
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    .line 48
    iput p1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    .line 49
    iput p2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    .line 50
    return-void
.end method

.method protected static rotateLeft(JI)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 214
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected applySipRounds(I)V
    .locals 11
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 189
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    .local v0, "r0":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    .local v2, "r1":J
    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    .local v4, "r2":J
    iget-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    .line 191
    .local v6, "r3":J
    const/4 v8, 0x0

    .local v8, "r":I
    :goto_0
    if-ge v8, p1, :cond_0

    .line 193
    add-long/2addr v0, v2

    .line 194
    add-long/2addr v4, v6

    .line 195
    const/16 v9, 0xd

    invoke-static {v2, v3, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    .line 196
    const/16 v9, 0x10

    invoke-static {v6, v7, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v6

    .line 197
    xor-long/2addr v2, v0

    .line 198
    xor-long/2addr v6, v4

    .line 199
    const/16 v9, 0x20

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v0

    .line 200
    add-long/2addr v4, v2

    .line 201
    add-long/2addr v0, v6

    .line 202
    const/16 v10, 0x11

    invoke-static {v2, v3, v10}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v2

    .line 203
    const/16 v10, 0x15

    invoke-static {v6, v7, v10}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v6

    .line 204
    xor-long/2addr v2, v4

    .line 205
    xor-long/2addr v6, v0

    .line 206
    invoke-static {v4, v5, v9}, Lorg/bouncycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v4

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 209
    .end local v8    # "r":I
    :cond_0
    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    iput-wide v6, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    .line 210
    return-void
.end method

.method public doFinal([BI)I
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->doFinal()J

    move-result-wide v0

    .line 163
    .local v0, "result":J
    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 164
    const/16 v2, 0x8

    return v2
.end method

.method public doFinal()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    rsub-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 143
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 144
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x38

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 146
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 148
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    .line 150
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    .line 152
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    xor-long/2addr v0, v2

    .line 154
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    .line 156
    return-wide v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    .line 54
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SipHash-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 59
    const/16 v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 65
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 69
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 70
    .local v0, "keyParameter":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 71
    .local v1, "key":[B
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    .line 77
    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    .line 79
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    .line 80
    return-void

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'params\' must be a 128-bit key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .end local v0    # "keyParameter":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v1    # "key":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'params\' must be an instance of KeyParameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected processMessageWord()V
    .locals 4

    .line 181
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    .line 182
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    .line 183
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->c:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash;->applySipRounds(I)V

    .line 184
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    .line 185
    return-void
.end method

.method public reset()V
    .locals 4

    .line 169
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v0:J

    .line 170
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v1:J

    .line 171
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k0:J

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v2:J

    .line 172
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->k1:J

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->v3:J

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 176
    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordCount:I

    .line 177
    return-void
.end method

.method public update(B)V
    .locals 7
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 85
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 86
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 88
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-ne v0, v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 93
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 17
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .local v3, "i":I
    and-int/lit8 v4, v2, -0x8

    .line 100
    .local v4, "fullWords":I
    iget v5, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    const/16 v6, 0x38

    const-wide/16 v7, 0xff

    const/16 v9, 0x8

    if-nez v5, :cond_2

    .line 102
    :goto_0
    if-ge v3, v4, :cond_0

    .line 104
    add-int v5, p2, v3

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 105
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 102
    add-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 107
    :cond_0
    :goto_1
    if-ge v3, v2, :cond_1

    .line 109
    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    ushr-long/2addr v10, v9

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 110
    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v5, p2, v3

    aget-byte v5, v1, v5

    int-to-long v12, v5

    and-long/2addr v12, v7

    shl-long/2addr v12, v6

    or-long/2addr v10, v12

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_1
    sub-int v5, v2, v4

    iput v5, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    goto :goto_4

    .line 116
    :cond_2
    iget v5, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    shl-int/lit8 v5, v5, 0x3

    .line 117
    .local v5, "bits":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 119
    add-int v10, p2, v3

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    .line 120
    .local v10, "n":J
    shl-long v12, v10, v5

    iget-wide v14, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    const/16 v16, 0x38

    neg-int v6, v5

    ushr-long/2addr v14, v6

    or-long/2addr v12, v14

    iput-wide v12, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 121
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 122
    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 117
    .end local v10    # "n":J
    add-int/lit8 v3, v3, 0x8

    const/16 v6, 0x38

    goto :goto_2

    :cond_3
    const/16 v16, 0x38

    .line 124
    :goto_3
    if-ge v3, v2, :cond_5

    .line 126
    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    ushr-long/2addr v10, v9

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 127
    iget-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    add-int v6, p2, v3

    aget-byte v6, v1, v6

    int-to-long v12, v6

    and-long/2addr v12, v7

    shl-long v12, v12, v16

    or-long/2addr v10, v12

    iput-wide v10, v0, Lorg/bouncycastle/crypto/macs/SipHash;->m:J

    .line 129
    iget v6, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    if-ne v6, v9, :cond_4

    .line 131
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/SipHash;->processMessageWord()V

    .line 132
    const/4 v6, 0x0

    iput v6, v0, Lorg/bouncycastle/crypto/macs/SipHash;->wordPos:I

    .line 124
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 136
    .end local v5    # "bits":I
    :cond_5
    :goto_4
    return-void
.end method

.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
.super Ljava/lang/Object;
.source "GMSSLeaf.java"


# instance fields
.field private concHashs:[B

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private i:I

.field private j:I

.field private keysize:I

.field private leaf:[B

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field privateKeyOTS:[B

.field private seed:[B

.field private steps:I

.field private two_power_w:I

.field private w:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .locals 8
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "w"    # I
    .param p3, "numLeafs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "w",
            "numLeafs"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    .line 127
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 129
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    .line 133
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    .line 134
    .local v0, "mdsizeBit":I
    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 135
    .local v1, "messagesize":I
    shl-int v2, v1, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v2

    .line 136
    .local v2, "checksumsize":I
    int-to-double v4, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v1

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    .line 138
    shl-int v4, v3, p2

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    .line 142
    shl-int v4, v3, p2

    sub-int/2addr v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int v4, v4, v5

    add-int/2addr v4, v3

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    add-int/2addr v4, v3

    int-to-double v3, v4

    int-to-double v5, p3

    div-double/2addr v3, v5

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    .line 147
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    .line 148
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 149
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 150
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int v3, v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II[B)V
    .locals 8
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "w"    # I
    .param p3, "numLeafs"    # I
    .param p4, "seed0"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "w",
            "numLeafs",
            "seed0"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    .line 157
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 159
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    .line 163
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    .line 164
    .local v0, "mdsizeBit":I
    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 165
    .local v1, "messagesize":I
    shl-int v2, v1, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v2

    .line 166
    .local v2, "checksumsize":I
    int-to-double v4, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 167
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v1

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    .line 168
    shl-int v4, v3, p2

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    .line 172
    shl-int v4, v3, p2

    sub-int/2addr v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int v4, v4, v5

    add-int/2addr v4, v3

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    add-int/2addr v4, v3

    int-to-double v3, v4

    int-to-double v5, p3

    div-double/2addr v3, v5

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    .line 177
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    .line 178
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 179
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 180
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int v3, v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    .line 182
    invoke-virtual {p0, p4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 11
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "otsIndex"    # [[B
    .param p3, "numLeafs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "otsIndex",
            "numLeafs"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    aget v1, p3, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    .line 84
    const/4 v1, 0x1

    aget v2, p3, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    .line 85
    const/4 v2, 0x2

    aget v3, p3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    .line 86
    const/4 v3, 0x3

    aget v4, p3, v3

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    .line 88
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 90
    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 93
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    .line 94
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/2addr v4, v3

    .line 95
    .local v4, "mdsizeBit":I
    int-to-double v5, v4

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 96
    .local v5, "messagesize":I
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    shl-int v6, v5, v6

    add-int/2addr v6, v1

    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v6

    .line 97
    .local v6, "checksumsize":I
    int-to-double v7, v6

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v7, v5

    iput v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    .line 99
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    shl-int v7, v1, v7

    iput v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    .line 105
    aget-object v0, p2, v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 106
    aget-object v0, p2, v1

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    .line 107
    aget-object v0, p2, v2

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    .line 108
    aget-object v0, p2, v3

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 109
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;)V
    .locals 1
    .param p1, "original"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 188
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    .line 189
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    .line 190
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 191
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 192
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    .line 193
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    .line 194
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    .line 195
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    .line 196
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    .line 197
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    .line 198
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    .line 199
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 200
    return-void
.end method

.method private getLog(I)I
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

    .line 299
    const/4 v0, 0x1

    .line 300
    .local v0, "log":I
    const/4 v1, 0x2

    .line 301
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 303
    shl-int/lit8 v1, v1, 0x1

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return v0
.end method

.method private updateLeafCalc()V
    .locals 7

    .line 234
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 239
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "s":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    add-int/lit16 v2, v2, 0x2710

    if-ge v1, v2, :cond_4

    .line 241
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 244
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 245
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    .line 246
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 247
    return-void

    .line 249
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 264
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 265
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 266
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    .line 267
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 270
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    add-int/lit8 v6, v6, -0x1

    mul-int v5, v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 256
    :cond_2
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    .line 257
    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    .line 259
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    .line 239
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 276
    .end local v1    # "s":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to updateLeaf in steps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getLeaf()[B
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 3

    .line 317
    const/4 v0, 0x4

    new-array v0, v0, [[B

    .line 318
    .local v0, "statByte":[[B
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    aput-object v2, v0, v1

    .line 319
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    aput-object v2, v0, v1

    .line 320
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->concHashs:[B

    aput-object v2, v0, v1

    .line 321
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->leaf:[B

    aput-object v2, v0, v1

    .line 323
    return-object v0
.end method

.method public getStatInt()[I
    .locals 3

    .line 334
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 335
    .local v0, "statInt":[I
    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    aput v2, v0, v1

    .line 336
    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    aput v2, v0, v1

    .line 337
    const/4 v1, 0x2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->steps:I

    aput v2, v0, v1

    .line 338
    const/4 v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->w:I

    aput v2, v0, v1

    .line 339
    return-object v0
.end method

.method initLeafCalc([B)V
    .locals 3
    .param p1, "seed0"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed0"
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->i:I

    .line 212
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->j:I

    .line 213
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    .line 214
    .local v1, "dummy":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->seed:[B

    .line 216
    return-void
.end method

.method nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .locals 1

    .line 220
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;)V

    .line 222
    .local v0, "nextLeaf":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->updateLeafCalc()V

    .line 224
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 349
    const-string v0, ""

    .line 351
    .local v0, "out":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    const-string v3, " "

    if-ge v1, v2, :cond_0

    .line 353
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->keysize:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->two_power_w:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v1

    .line 359
    .local v1, "temp":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 361
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 363
    new-instance v5, Ljava/lang/String;

    aget-object v6, v1, v4

    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 367
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 370
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method

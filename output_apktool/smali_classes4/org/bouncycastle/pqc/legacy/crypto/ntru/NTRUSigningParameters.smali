.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;
.super Ljava/lang/Object;
.source "NTRUSigningParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public B:I

.field public N:I

.field beta:D

.field public betaSq:D

.field bitsF:I

.field public d:I

.field public d1:I

.field public d2:I

.field public d3:I

.field public hashAlg:Lorg/bouncycastle/crypto/Digest;

.field normBound:D

.field public normBoundSq:D

.field public q:I

.field public signFailTolerance:I


# direct methods
.method public constructor <init>(IIIIDDLorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "N"    # I
    .param p2, "q"    # I
    .param p3, "d"    # I
    .param p4, "B"    # I
    .param p5, "beta"    # D
    .param p7, "normBound"    # D
    .param p9, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "q",
            "d",
            "B",
            "beta",
            "normBound",
            "hashAlg"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    .line 44
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    .line 45
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    .line 46
    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    .line 47
    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    .line 48
    iput-wide p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    .line 49
    iput-wide p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    .line 50
    iput-object p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(IIIIIIDDDLorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "N"    # I
    .param p2, "q"    # I
    .param p3, "d1"    # I
    .param p4, "d2"    # I
    .param p5, "d3"    # I
    .param p6, "B"    # I
    .param p7, "beta"    # D
    .param p9, "normBound"    # D
    .param p11, "keyNormBound"    # D
    .param p13, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "N",
            "q",
            "d1",
            "d2",
            "d3",
            "B",
            "beta",
            "normBound",
            "keyNormBound",
            "hashAlg"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    .line 70
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    .line 71
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    .line 72
    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    .line 73
    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    .line 74
    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    .line 75
    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    .line 76
    iput-wide p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    .line 77
    iput-wide p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    .line 78
    iput-object p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    .line 97
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    .line 99
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    .line 100
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    .line 101
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    .line 102
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    .line 103
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    .line 104
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    .line 105
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    .line 106
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    .line 107
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    .line 108
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    .line 109
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "alg":Ljava/lang/String;
    const-string v2, "SHA-512"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0

    .line 114
    :cond_0
    const-string v2, "SHA-256"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 118
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->init()V

    .line 119
    return-void
.end method

.method private init()V
    .locals 4

    .line 84
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    .line 85
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    .line 86
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;
    .locals 10

    .line 147
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iget-wide v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    iget-wide v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;-><init>(IIIIDDLorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 178
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 180
    return v0

    .line 182
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 184
    return v1

    .line 186
    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    if-nez v2, :cond_2

    .line 188
    return v1

    .line 190
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    .line 191
    .local v2, "other":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    if-eq v3, v4, :cond_3

    .line 193
    return v1

    .line 195
    :cond_3
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    if-eq v3, v4, :cond_4

    .line 197
    return v1

    .line 199
    :cond_4
    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    .line 201
    return v1

    .line 203
    :cond_5
    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    .line 205
    return v1

    .line 207
    :cond_6
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    if-eq v3, v4, :cond_7

    .line 209
    return v1

    .line 211
    :cond_7
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    if-eq v3, v4, :cond_8

    .line 213
    return v1

    .line 215
    :cond_8
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    if-eq v3, v4, :cond_9

    .line 217
    return v1

    .line 219
    :cond_9
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    if-eq v3, v4, :cond_a

    .line 221
    return v1

    .line 223
    :cond_a
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    if-eq v3, v4, :cond_b

    .line 225
    return v1

    .line 227
    :cond_b
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v3, :cond_c

    .line 229
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v3, :cond_d

    .line 231
    return v1

    .line 234
    :cond_c
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 236
    return v1

    .line 238
    :cond_d
    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_e

    .line 240
    return v1

    .line 242
    :cond_e
    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_f

    .line 244
    return v1

    .line 246
    :cond_f
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    if-eq v3, v4, :cond_10

    .line 248
    return v1

    .line 250
    :cond_10
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    if-eq v3, v4, :cond_11

    .line 252
    return v1

    .line 255
    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 152
    const/16 v0, 0x1f

    .line 153
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 154
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    add-int/2addr v2, v3

    .line 155
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    add-int/2addr v1, v3

    .line 157
    .end local v2    # "result":I
    .restart local v1    # "result":I
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 158
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    xor-long/2addr v6, v2

    long-to-int v7, v6

    add-int/2addr v4, v7

    .line 159
    .end local v1    # "result":I
    .local v4, "result":I
    iget-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 160
    .end local v2    # "temp":J
    .local v1, "temp":J
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v6, v1, v5

    xor-long/2addr v6, v1

    long-to-int v7, v6

    add-int/2addr v3, v7

    .line 161
    .end local v4    # "result":I
    .local v3, "result":I
    mul-int/lit8 v4, v3, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    add-int/2addr v4, v6

    .line 162
    .end local v3    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v3, v4, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    add-int/2addr v3, v6

    .line 163
    .end local v4    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v4, v3, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    add-int/2addr v4, v6

    .line 164
    .end local v3    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v3, v4, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    add-int/2addr v3, v6

    .line 165
    .end local v4    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v4, v3, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    add-int/2addr v4, v6

    .line 166
    .end local v3    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v3, v4, 0x1f

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_0
    add-int/2addr v3, v6

    .line 167
    .end local v4    # "result":I
    .restart local v3    # "result":I
    iget-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 168
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v6, v1, v5

    xor-long/2addr v6, v1

    long-to-int v7, v6

    add-int/2addr v4, v7

    .line 169
    .end local v3    # "result":I
    .restart local v4    # "result":I
    iget-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 170
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v1, v5

    xor-long/2addr v5, v1

    long-to-int v6, v5

    add-int/2addr v3, v6

    .line 171
    .end local v4    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    add-int/2addr v4, v5

    .line 172
    .end local v3    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v3, v4, 0x1f

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    add-int/2addr v3, v5

    .line 173
    .end local v4    # "result":I
    .restart local v3    # "result":I
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 260
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SignatureParameters(N="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " q="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "output":Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    .line 265
    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " B="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " beta="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " normBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hashAlg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 133
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 134
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 135
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 136
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 137
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    iget-wide v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 139
    iget-wide v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 140
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    return-void
.end method

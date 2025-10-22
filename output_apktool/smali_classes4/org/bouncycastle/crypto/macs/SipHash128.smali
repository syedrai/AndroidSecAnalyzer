.class public Lorg/bouncycastle/crypto/macs/SipHash128;
.super Lorg/bouncycastle/crypto/macs/SipHash;
.source "SipHash128.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/SipHash;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
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

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/SipHash;-><init>(II)V

    .line 33
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
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

    .line 55
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->wordPos:I

    rsub-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    .line 56
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    .line 57
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->wordCount:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->wordPos:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->m:J

    .line 59
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash128;->processMessageWord()V

    .line 61
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    const-wide/16 v2, 0xee

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    .line 63
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->d:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/macs/SipHash128;->applySipRounds(I)V

    .line 65
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v3:J

    xor-long/2addr v0, v2

    .line 67
    .local v0, "r0":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    const-wide/16 v4, 0xdd

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    .line 68
    iget v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->d:I

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/macs/SipHash128;->applySipRounds(I)V

    .line 70
    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v3:J

    xor-long/2addr v2, v4

    .line 72
    .local v2, "r1":J
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/SipHash128;->reset()V

    .line 74
    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 75
    add-int/lit8 v4, p2, 0x8

    invoke-static {v2, v3, p1, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 76
    const/16 v4, 0x10

    return v4
.end method

.method public doFinal()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "doFinal() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    .line 37
    iget v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->c:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SipHash128-"

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

    .line 42
    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 4

    .line 81
    invoke-super {p0}, Lorg/bouncycastle/crypto/macs/SipHash;->reset()V

    .line 82
    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    const-wide/16 v2, 0xee

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/SipHash128;->v1:J

    .line 83
    return-void
.end method

.class public Lorg/bouncycastle/crypto/digests/ISAPDigest;
.super Ljava/lang/Object;
.source "ISAPDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private t0:J

.field private t1:J

.field private t2:J

.field private t3:J

.field private t4:J

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private P12()V
    .locals 2

    .line 41
    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 42
    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 43
    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 44
    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 45
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 46
    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 47
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 48
    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 49
    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 50
    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 51
    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 52
    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 53
    return-void
.end method

.method private ROTR(JJ)J
    .locals 4
    .param p1, "x"    # J
    .param p3, "n"    # J
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

    .line 57
    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int v3, v2

    shl-long v2, p1, v3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ROUND(J)V
    .locals 8
    .param p1, "C"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "C"
        }
    .end annotation

    .line 27
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    .line 28
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    .line 29
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    .line 30
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    not-long v2, v2

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    .line 31
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    .line 32
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v4, 0x13

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v4, 0x1c

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 33
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v4, 0x27

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v4, 0x3d

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    .line 34
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v4, 0x6

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    not-long v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    .line 35
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v4, 0xa

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v4, 0x11

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    .line 36
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v4, 0x7

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v4, 0x29

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    .line 37
    return-void
.end method


# virtual methods
.method protected U64BIG(J)J
    .locals 6
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 62
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 63
    const-wide/16 v2, 0x28

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 62
    return-wide v0
.end method

.method public doFinal([BI)I
    .locals 12
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

    .line 97
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    .line 103
    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 104
    const-wide v0, -0x744de7ce39f0effeL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    .line 105
    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    .line 106
    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    .line 107
    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 110
    .local v0, "input":[B
    array-length v1, v0

    .line 111
    .local v1, "len":I
    shr-int/lit8 v2, v1, 0x3

    new-array v2, v2, [J

    .line 112
    .local v2, "in64":[J
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "idx":I
    :goto_0
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    .line 116
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    aget-wide v7, v2, v3

    invoke-virtual {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v7

    xor-long/2addr v4, v7

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 117
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    .line 118
    add-int/lit8 v1, v1, -0x8

    move v3, v6

    goto :goto_0

    .line 121
    .end local v6    # "idx":I
    .restart local v3    # "idx":I
    :cond_0
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    rsub-int/lit8 v6, v1, 0x7

    const/4 v7, 0x3

    shl-int/2addr v6, v7

    const-wide/16 v8, 0x80

    shl-long/2addr v8, v6

    xor-long/2addr v4, v8

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 122
    :goto_1
    if-lez v1, :cond_1

    .line 124
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    shl-int/lit8 v6, v3, 0x3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v6, v1

    aget-byte v6, v0, v6

    int-to-long v8, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    rsub-int/lit8 v6, v1, 0x7

    shl-int/2addr v6, v7

    shl-long/2addr v8, v6

    xor-long/2addr v4, v8

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    goto :goto_1

    .line 126
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    .line 128
    const/4 v4, 0x4

    new-array v4, v4, [J

    .line 129
    .local v4, "out64":[J
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_2

    .line 131
    iget-wide v5, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 132
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 135
    :cond_2
    iget-wide v5, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 136
    invoke-static {v4, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 137
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 138
    const/16 v5, 0x20

    return v5

    .line 99
    .end local v0    # "input":[B
    .end local v1    # "len":I
    .end local v2    # "in64":[J
    .end local v3    # "idx":I
    .end local v4    # "out64":[J
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "ISAP Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 75
    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 145
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 87
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

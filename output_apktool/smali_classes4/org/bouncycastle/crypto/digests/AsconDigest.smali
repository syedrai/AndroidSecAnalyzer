.class public Lorg/bouncycastle/crypto/digests/AsconDigest;
.super Ljava/lang/Object;
.source "AsconDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    }
.end annotation


# instance fields
.field private final ASCON_PB_ROUNDS:I

.field private final CRYPTO_BYTES:I

.field private final algorithmName:Ljava/lang/String;

.field asconParameters:Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;)V
    .locals 2
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 52
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->CRYPTO_BYTES:I

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter settings for Ascon Hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    .line 37
    const-string v0, "Ascon-HashA"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    .line 38
    goto :goto_0

    .line 32
    :pswitch_1
    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    .line 33
    const-string v0, "Ascon-Hash"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    .line 34
    nop

    .line 42
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->reset()V

    .line 43
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private LOADBYTES([BII)J
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "inOff",
            "n"
        }
    .end annotation

    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .local v0, "x":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 106
    add-int v3, v2, p2

    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x7

    shl-int/lit8 v5, v5, 0x3

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method private P(I)V
    .locals 2
    .param p1, "nr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nr"
        }
    .end annotation

    .line 76
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 78
    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 79
    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 80
    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 81
    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 83
    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 85
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 86
    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 88
    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 89
    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 90
    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 91
    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 92
    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 93
    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 94
    return-void
.end method

.method private PAD(I)J
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 98
    shl-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x38

    const-wide/16 v1, 0x80

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private ROR(JI)J
    .locals 4
    .param p1, "x"    # J
    .param p3, "n"    # I
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
    ushr-long v0, p1, p3

    rsub-int/lit8 v2, p3, 0x40

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ROUND(J)V
    .locals 14
    .param p1, "C"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "C"
        }
    .end annotation

    .line 62
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 63
    .local v0, "t0":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 64
    .local v2, "t1":J
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 65
    .local v4, "t2":J
    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v6, v8

    xor-long/2addr v6, p1

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    not-long v8, v8

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    .line 66
    .local v6, "t3":J
    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    .line 67
    .local v8, "t4":J
    const/16 v10, 0x13

    invoke-direct {p0, v0, v1, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v0

    const/16 v12, 0x1c

    invoke-direct {p0, v0, v1, v12}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 68
    const/16 v10, 0x27

    invoke-direct {p0, v2, v3, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v2

    const/16 v12, 0x3d

    invoke-direct {p0, v2, v3, v12}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    .line 69
    const/4 v10, 0x1

    invoke-direct {p0, v4, v5, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v4

    const/4 v12, 0x6

    invoke-direct {p0, v4, v5, v12}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    not-long v10, v10

    iput-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    .line 70
    const/16 v10, 0xa

    invoke-direct {p0, v6, v7, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v6

    const/16 v12, 0x11

    invoke-direct {p0, v6, v7, v12}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    .line 71
    const/4 v10, 0x7

    invoke-direct {p0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v8

    const/16 v12, 0x29

    invoke-direct {p0, v8, v9, v12}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    .line 72
    return-void
.end method

.method private STOREBYTES([BIJI)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "w"    # J
    .param p5, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "inOff",
            "w",
            "n"
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 115
    add-int v1, v0, p2

    rsub-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, p3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, v1

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .line 156
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 161
    .local v0, "input":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 162
    .local v1, "len":I
    const/4 v2, 0x0

    .line 164
    .local v2, "inOff":I
    const/16 v3, 0x8

    .line 165
    .local v3, "ASCON_HASH_RATE":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 167
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v6, 0x8

    invoke-direct {p0, v0, v2, v6}, Lorg/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 168
    iget v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    .line 169
    add-int/2addr v2, v3

    .line 170
    sub-int/2addr v1, v3

    goto :goto_0

    .line 173
    :cond_0
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 174
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->PAD(I)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 175
    const/16 v4, 0xc

    .line 176
    .local v4, "ASCON_PA_ROUNDS":I
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    .line 178
    const/16 v1, 0x20

    move v7, p2

    .line 179
    .end local p2    # "outOff":I
    .local v7, "outOff":I
    :goto_1
    if-le v1, v3, :cond_1

    .line 181
    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v10, 0x8

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "output":[B
    .local v6, "output":[B
    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    .line 182
    iget p1, v5, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    .line 183
    add-int/2addr v7, v3

    .line 184
    sub-int/2addr v1, v3

    move-object p1, v6

    goto :goto_1

    .line 187
    .end local v6    # "output":[B
    .restart local p1    # "output":[B
    :cond_1
    move-object v5, p0

    move-object v6, p1

    .end local p1    # "output":[B
    .restart local v6    # "output":[B
    iget-wide v8, v5, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    move v10, v1

    .end local v1    # "len":I
    .local v10, "len":I
    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    .line 188
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->reset()V

    .line 189
    const/16 p1, 0x20

    return p1

    .line 158
    .end local v0    # "input":[B
    .end local v2    # "inOff":I
    .end local v3    # "ASCON_HASH_RATE":I
    .end local v4    # "ASCON_PA_ROUNDS":I
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .end local v10    # "len":I
    .restart local p1    # "output":[B
    .restart local p2    # "outOff":I
    :cond_2
    move-object v6, p1

    .end local p1    # "output":[B
    .restart local v6    # "output":[B
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v0, "output buffer is too short"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 134
    const/16 v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 128
    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 197
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    const-wide v0, 0x1470194fc6528a6L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 201
    const-wide v0, 0x738ec38ac0adffa7L    # 4.301965536445435E248

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    .line 202
    const-wide v0, 0x2ec8e3296c76384cL    # 2.5621814324380113E-83

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    .line 203
    const-wide v0, -0x29095ab280adc883L    # -8.509507695364991E110

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    .line 204
    const-wide v0, -0x5ec3bd5ddc417279L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 208
    const-wide v0, -0x744de7ce39f0effeL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    .line 209
    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    .line 210
    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    .line 211
    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    .line 214
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
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

    .line 146
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 151
    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

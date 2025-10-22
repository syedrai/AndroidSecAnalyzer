.class public Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
.super Ljava/lang/Object;
.source "MGF1BytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private hLen:I

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 27
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    .line 28
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "sp"
        }
    .end annotation

    .line 58
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 59
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 60
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 61
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 62
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_3

    .line 81
    iget v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    new-array v0, v0, [B

    .line 82
    .local v0, "hashBuf":[B
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 83
    .local v1, "C":[B
    const/4 v2, 0x0

    .line 85
    .local v2, "counter":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 87
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    const/4 v4, 0x0

    if-le p3, v3, :cond_1

    .line 91
    :cond_0
    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    .line 93
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v6, v6

    invoke-interface {v3, v5, v4, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 94
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v1

    invoke-interface {v3, v1, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 95
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 97
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int v3, v3, v2

    add-int/2addr v3, p2

    iget v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    invoke-static {v0, v4, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    div-int v3, p3, v3

    if-lt v2, v3, :cond_0

    .line 102
    :cond_1
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int v3, v3, v2

    if-ge v3, p3, :cond_2

    .line 104
    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    .line 106
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v6, v6

    invoke-interface {v3, v5, v4, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 107
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v1

    invoke-interface {v3, v1, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 108
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 110
    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int v3, v3, v2

    add-int/2addr v3, p2

    iget v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int v5, v5, v2

    sub-int v5, p3, v5

    invoke-static {v0, v4, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_2
    return p3

    .line 78
    .end local v0    # "hashBuf":[B
    .end local v1    # "C":[B
    .end local v2    # "counter":I
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/bouncycastle/crypto/DerivationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 33
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/MGFParameters;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/MGFParameters;

    .line 40
    .local v0, "p":Lorg/bouncycastle/crypto/params/MGFParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/MGFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    .line 41
    return-void

    .line 35
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/MGFParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MGF parameters required for MGF1Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

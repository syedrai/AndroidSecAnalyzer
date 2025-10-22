.class public Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "BaseKDFBytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "counterStart"    # I
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "counterStart",
            "digest"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 38
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12
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

    .line 82
    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_5

    .line 87
    int-to-long v0, p3

    .line 88
    .local v0, "oBytes":J
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 96
    .local v2, "outLen":I
    const-wide v3, 0x1ffffffffL

    cmp-long v5, v0, v3

    if-gtz v5, :cond_4

    .line 101
    int-to-long v3, v2

    add-long/2addr v3, v0

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    int-to-long v5, v2

    div-long/2addr v3, v5

    long-to-int v4, v3

    .line 103
    .local v4, "cThreshold":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 105
    .local v3, "dig":[B
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 106
    .local v5, "C":[B
    iget v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 108
    iget v6, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    and-int/lit16 v6, v6, -0x100

    .line 110
    .local v6, "counterBase":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_3

    .line 112
    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    iget-object v11, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v11, v11

    invoke-interface {v9, v10, v7, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 113
    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v5

    invoke-interface {v9, v5, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 115
    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v9, :cond_0

    .line 117
    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    iget-object v11, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v11, v11

    invoke-interface {v9, v10, v7, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 120
    :cond_0
    iget-object v9, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    if-le p3, v2, :cond_1

    .line 124
    invoke-static {v3, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    add-int/2addr p2, v2

    .line 126
    sub-int/2addr p3, v2

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v3, v7, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :goto_1
    const/4 v9, 0x3

    aget-byte v10, v5, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    if-nez v10, :cond_2

    .line 135
    add-int/lit16 v6, v6, 0x100

    .line 136
    invoke-static {v6, v5, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 110
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    .end local v8    # "i":I
    :cond_3
    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 142
    long-to-int v7, v0

    return v7

    .line 98
    .end local v3    # "dig":[B
    .end local v4    # "cThreshold":I
    .end local v5    # "C":[B
    .end local v6    # "counterBase":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output length too large"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v0    # "oBytes":J
    .end local v2    # "outLen":I
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

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

    .line 42
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KDFParameters;

    .line 46
    .local v0, "p":Lorg/bouncycastle/crypto/params/KDFParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 47
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 48
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/KDFParameters;
    goto :goto_0

    .line 49
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    .line 53
    .local v0, "p":Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 55
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;
    nop

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KDF parameters required for generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

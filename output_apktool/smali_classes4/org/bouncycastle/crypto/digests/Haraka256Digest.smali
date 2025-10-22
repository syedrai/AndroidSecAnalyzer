.class public Lorg/bouncycastle/crypto/digests/Haraka256Digest;
.super Lorg/bouncycastle/crypto/digests/HarakaBase;
.source "Haraka256Digest.java"


# instance fields
.field private final buffer:[B

.field private off:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 89
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    .line 91
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Haraka256Digest;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/Haraka256Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 96
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 98
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    .line 99
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    .line 101
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 102
    return-void
.end method

.method private haraka256256([B[BI)I
    .locals 10
    .param p1, "msg"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "out",
            "outOff"
        }
    .end annotation

    .line 32
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v7, 0x1

    const/16 v2, 0x10

    aput v2, v1, v7

    const/4 v4, 0x0

    aput v0, v1, v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[B

    .line 33
    .local v8, "s1":[[B
    new-array v1, v0, [I

    aput v2, v1, v7

    aput v0, v1, v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[B

    .line 35
    .local v9, "s2":[[B
    aget-object v1, v8, v4

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    aget-object v1, v8, v7

    invoke-static {p1, v2, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    aget-object v1, v8, v4

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v5, v5, v4

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v8, v4

    .line 39
    aget-object v1, v8, v7

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v5, v5, v7

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v8, v7

    .line 40
    aget-object v1, v8, v4

    sget-object v5, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v0, v5, v0

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 41
    aget-object v0, v8, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 42
    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 44
    aget-object v0, v9, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x4

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 45
    aget-object v0, v9, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x5

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 46
    aget-object v0, v8, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x6

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 47
    aget-object v0, v8, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x7

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 48
    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 50
    aget-object v0, v9, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0x8

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 51
    aget-object v0, v9, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0x9

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 52
    aget-object v0, v8, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xa

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 53
    aget-object v0, v8, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xb

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 54
    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 56
    aget-object v0, v9, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xc

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 57
    aget-object v0, v9, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xd

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 58
    aget-object v0, v8, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xe

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 59
    aget-object v0, v8, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xf

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 60
    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 62
    aget-object v0, v9, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 63
    aget-object v0, v9, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 64
    aget-object v0, v8, v4

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 65
    aget-object v0, v8, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 66
    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 68
    aget-object v1, v9, v4

    const/4 v2, 0x0

    const/16 v0, 0x10

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 69
    aget-object v1, v9, v7

    add-int/lit8 v6, p3, 0x10

    const/16 v4, 0x10

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 71
    const/16 v0, 0x20

    return v0
.end method

.method private mix256([[B[[B)V
    .locals 7
    .param p1, "s1"    # [[B
    .param p2, "s2"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s1",
            "s2"
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    const/4 v1, 0x1

    aget-object v2, p1, v1

    aget-object v4, p2, v0

    invoke-static {v2, v0, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    aget-object v2, p1, v0

    aget-object v4, p2, v0

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    aget-object v2, p1, v1

    aget-object v4, p2, v0

    const/16 v6, 0xc

    invoke-static {v2, v3, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    aget-object v2, p1, v0

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    aget-object v2, p1, v1

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    aget-object v0, p1, v0

    aget-object v2, p2, v1

    invoke-static {v0, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    aget-object v0, p1, v1

    aget-object v1, p2, v1

    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
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

    .line 132
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 137
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->haraka256256([B[BI)I

    move-result v0

    .line 144
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->reset()V

    .line 146
    return v0

    .line 139
    .end local v0    # "rv":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output too short to receive digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input must be exactly 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "Haraka-256"

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 153
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 111
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    aput-byte p1, v0, v1

    .line 117
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 121
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    rsub-int/lit8 v1, p3, 0x20

    if-gt v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    .line 128
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

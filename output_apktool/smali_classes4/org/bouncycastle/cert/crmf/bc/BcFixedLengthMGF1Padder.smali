.class public Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;
.super Ljava/lang/Object;
.source "BcFixedLengthMGF1Padder.java"

# interfaces
.implements Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;


# instance fields
.field private dig:Lorg/bouncycastle/crypto/Digest;

.field private length:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;-><init>(ILjava/security/SecureRandom;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "random"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    .line 42
    iput p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    .line 44
    return-void
.end method


# virtual methods
.method public getPaddedData([B)[B
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 48
    iget v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    new-array v0, v0, [B

    .line 49
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 50
    .local v1, "seed":[B
    iget v2, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 52
    .local v2, "mask":[B
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    .line 57
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 59
    new-instance v3, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 61
    .local v3, "maskGen":Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
    new-instance v4, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v4, v1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 63
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    .line 65
    array-length v4, v1

    invoke-static {v1, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    array-length v4, v1

    array-length v6, p1

    invoke-static {p1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    array-length v4, v1

    array-length v5, p1

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-eq v4, v5, :cond_1

    .line 70
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v2

    if-eq v4, v5, :cond_2

    .line 75
    array-length v5, v1

    add-int/2addr v5, v4

    aget-byte v6, v0, v5

    aget-byte v7, v2, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method

.method public getUnpaddedData([B)[B
    .locals 8
    .param p1, "paddedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddedData"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 84
    .local v0, "seed":[B
    iget v1, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 86
    .local v1, "mask":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance v2, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 90
    .local v2, "maskGen":Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
    new-instance v4, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v4, v0}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 92
    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    .line 94
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-eq v4, v5, :cond_0

    .line 96
    array-length v5, v0

    add-int/2addr v5, v4

    aget-byte v6, p1, v5

    aget-byte v7, v1, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 101
    .local v4, "end":I
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    array-length v6, v0

    if-eq v5, v6, :cond_2

    .line 103
    aget-byte v6, p1, v5

    if-nez v6, :cond_1

    .line 105
    move v4, v5

    .line 106
    goto :goto_2

    .line 101
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 110
    .end local v5    # "i":I
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 115
    array-length v5, v0

    sub-int v5, v4, v5

    new-array v5, v5, [B

    .line 117
    .local v5, "data":[B
    array-length v6, v0

    array-length v7, v5

    invoke-static {p1, v6, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object v5

    .line 112
    .end local v5    # "data":[B
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "bad padding in encoding"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

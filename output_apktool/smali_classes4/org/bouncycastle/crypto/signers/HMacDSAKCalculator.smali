.class public Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;
.super Ljava/lang/Object;
.source "HMacDSAKCalculator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/signers/DSAKCalculator;


# instance fields
.field private final K:[B

.field private final V:[B

.field private final hMac:Lorg/bouncycastle/crypto/macs/HMac;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    .line 34
    .local v0, "macSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    .line 35
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    .line 36
    return-void
.end method

.method private bitsToInt([B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "t"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 157
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 158
    .local v0, "blen":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 160
    .local v1, "qlen":I
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 161
    .local v2, "v":Ljava/math/BigInteger;
    if-le v0, v1, :cond_0

    .line 163
    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 165
    :cond_0
    return-object v2
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 9
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "d"    # Ljava/math/BigInteger;
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "d",
            "message"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    .line 52
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 53
    .local v0, "mInt":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 58
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 60
    .local v1, "size":I
    invoke-static {v1, p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    .line 61
    .local v2, "x":[B
    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v3

    .line 63
    .local v3, "m":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 64
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 66
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 68
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v8, v8

    invoke-virtual {v4, v7, v5, v8}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 69
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    .line 70
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v7, v2

    invoke-virtual {v4, v2, v5, v7}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 71
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v7, v3

    invoke-virtual {v4, v3, v5, v7}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 72
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->initAdditionalInput0(Lorg/bouncycastle/crypto/macs/HMac;)V

    .line 73
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v4, v7, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 75
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 76
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v8, v8

    invoke-virtual {v4, v7, v5, v8}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 77
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v4, v7, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 79
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v8, v8

    invoke-virtual {v4, v7, v5, v8}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 80
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    .line 81
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 82
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 83
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->initAdditionalInput1(Lorg/bouncycastle/crypto/macs/HMac;)V

    .line 84
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v4, v6, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 86
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 87
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v7, v7

    invoke-virtual {v4, v6, v5, v7}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 88
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v4, v6, v5}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 89
    return-void
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "random"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initAdditionalInput0(Lorg/bouncycastle/crypto/macs/HMac;)V
    .locals 0
    .param p1, "hmac0"    # Lorg/bouncycastle/crypto/macs/HMac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmac0"
        }
    .end annotation

    .line 142
    return-void
.end method

.method protected initAdditionalInput1(Lorg/bouncycastle/crypto/macs/HMac;)V
    .locals 0
    .param p1, "hmac1"    # Lorg/bouncycastle/crypto/macs/HMac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmac1"
        }
    .end annotation

    .line 153
    return-void
.end method

.method public isDeterministic()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 7

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v0

    new-array v0, v0, [B

    .line 97
    .local v0, "t":[B
    :goto_0
    const/4 v1, 0x0

    .line 99
    .local v1, "tOff":I
    :goto_1
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-virtual {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 102
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v2, v4, v3}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 104
    array-length v2, v0

    sub-int/2addr v2, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    .local v2, "len":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-static {v4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    add-int/2addr v1, v2

    .line 107
    .end local v2    # "len":I
    goto :goto_1

    .line 109
    :cond_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 111
    .local v2, "k":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    .line 113
    return-object v2

    .line 116
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v3, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 117
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    .line 118
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-virtual {v4, v5, v3}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 120
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->K:[B

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 121
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v3, v6}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 122
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;->V:[B

    invoke-virtual {v4, v5, v3}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 123
    .end local v1    # "tOff":I
    .end local v2    # "k":Ljava/math/BigInteger;
    goto :goto_0
.end method

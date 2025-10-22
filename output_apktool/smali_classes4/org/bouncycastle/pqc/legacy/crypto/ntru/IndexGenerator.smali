.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private N:I

.field private buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

.field private c:I

.field private counter:I

.field private hLen:I

.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private initialized:Z

.field private minCallsR:I

.field private remLen:I

.field private seed:[B

.field private totLen:I


# direct methods
.method static bridge synthetic -$$Nest$smcopyOf([BI)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method constructor <init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 2
    .param p1, "seed"    # [B
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "params"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->seed:[B

    .line 32
    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->N:I

    .line 33
    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    .line 34
    iget v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->minCallsR:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    .line 37
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    .line 38
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    .line 39
    iget-object v1, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 41
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    .line 42
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->initialized:Z

    .line 43
    return-void
.end method

.method private appendHash(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;[B)V
    .locals 4
    .param p1, "m"    # Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    .param p2, "hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "hash"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->seed:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 107
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    .line 108
    return-void
.end method

.method private static copyOf([BI)[B
    .locals 3
    .param p0, "src"    # [B
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "len"
        }
    .end annotation

    .line 231
    new-array v0, p1, [B

    .line 233
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    return-object v0
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "counter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashAlg",
            "counter"
        }
    .end annotation

    .line 112
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 113
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 114
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 115
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 116
    return-void
.end method


# virtual methods
.method nextIndex()I
    .locals 6

    .line 50
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 54
    .local v0, "hash":[B
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->minCallsR:I

    if-ge v2, v3, :cond_0

    .line 56
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->appendHash(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 57
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    goto :goto_0

    .line 59
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->minCallsR:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int v2, v2, v3

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    .line 60
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    .line 61
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->initialized:Z

    .line 66
    .end local v0    # "hash":[B
    :cond_1
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->totLen:I

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->getTrailing(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    move-result-object v0

    .line 68
    .local v0, "M":Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    if-ge v2, v3, :cond_4

    .line 70
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    sub-int/2addr v2, v3

    .line 71
    .local v2, "tmpLen":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 72
    .local v3, "cThreshold":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 73
    .local v4, "hash":[B
    :cond_2
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    if-ge v5, v3, :cond_3

    .line 75
    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->appendHash(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 76
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->counter:I

    .line 77
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    if-le v2, v5, :cond_2

    .line 79
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    goto :goto_2

    .line 82
    :cond_3
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    .line 83
    new-instance v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    .line 84
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->buf:Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    .line 85
    .end local v2    # "tmpLen":I
    .end local v3    # "cThreshold":I
    .end local v4    # "hash":[B
    goto :goto_3

    .line 88
    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->remLen:I

    .line 91
    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->getLeadingAsInt(I)I

    move-result v2

    .line 92
    .local v2, "i":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    shl-int v3, v1, v3

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->c:I

    shl-int v4, v1, v4

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->N:I

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    .line 94
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->N:I

    rem-int v1, v2, v1

    return v1

    .line 96
    .end local v0    # "M":Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    .end local v2    # "i":I
    :cond_5
    goto :goto_1
.end method

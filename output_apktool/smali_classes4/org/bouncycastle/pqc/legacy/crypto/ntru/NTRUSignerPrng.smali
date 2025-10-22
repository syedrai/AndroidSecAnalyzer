.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;
.super Ljava/lang/Object;
.source "NTRUSignerPrng.java"


# instance fields
.field private counter:I

.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private seed:[B


# direct methods
.method constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "hashAlg"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->seed:[B

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 27
    return-void
.end method


# virtual methods
.method nextBytes(I)[B
    .locals 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 37
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->seed:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 42
    .local v1, "cbuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->seed:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 43
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 45
    .local v2, "array":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 47
    .local v3, "hash":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v2

    const/4 v6, 0x0

    invoke-interface {v4, v2, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 49
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v3, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 59
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    .line 60
    .end local v1    # "cbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "array":[B
    .end local v3    # "hash":[B
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;
.source "HarakaS256Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V
    .locals 1
    .param p1, "base"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    .line 17
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka256_rc:[[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->haraka256_rc:[[I

    .line 18
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
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

    .line 55
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 56
    .local v1, "s":[B
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->haraka256Perm([B)V

    .line 57
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->buffer:[B

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/4 v2, 0x0

    move-object v5, p1

    move v6, p2

    .end local p1    # "output":[B
    .end local p2    # "outOff":I
    .local v5, "output":[B
    .local v6, "outOff":I
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->xor([BI[BI[BII)V

    .line 59
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->reset()V

    .line 61
    array-length p1, v5

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "HarakaS-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 27
    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 0

    .line 66
    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->reset()V

    .line 67
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

    .line 32
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    aput-byte p1, v0, v1

    .line 38
    return-void

    .line 34
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

    .line 42
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    rsub-int/lit8 v1, p3, 0x20

    if-gt v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    .line 49
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

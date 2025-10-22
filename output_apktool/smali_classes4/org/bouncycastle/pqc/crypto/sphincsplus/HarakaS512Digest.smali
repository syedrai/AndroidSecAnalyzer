.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;
.source "HarakaS512Digest.java"

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
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512_rc:[[J

    .line 18
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
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

    .line 53
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 54
    .local v1, "s":[B
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512Perm([B)V

    .line 55
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    const/16 v4, 0x8

    const/16 v7, 0x8

    const/16 v2, 0x8

    move-object v5, p1

    move v6, p2

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    .line 56
    move p1, v6

    .end local v6    # "outOff":I
    .local p1, "outOff":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    add-int/lit8 v6, p1, 0x8

    const/16 v7, 0x10

    const/16 v2, 0x18

    const/16 v4, 0x18

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    .line 57
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    add-int/lit8 v6, p1, 0x18

    const/16 v7, 0x8

    const/16 v2, 0x30

    const/16 v4, 0x30

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    .line 59
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->reset()V

    .line 61
    array-length p2, v1

    return p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "HarakaS-512"

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
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    aput-byte p1, v0, v1

    .line 37
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 64 bytes"

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

    .line 41
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-gt v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShakeSymmetric"
.end annotation


# instance fields
.field private final sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;-><init>(I)V

    .line 48
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 49
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 50
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    .line 51
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    .line 52
    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 66
    return-void
.end method

.method hash_h([B[BI)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .param p3, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "outOffset"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 59
    return-void
.end method

.method kdf([B[B)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 100
    return-void
.end method

.method prf([B[BB)V
    .locals 4
    .param p1, "out"    # [B
    .param p2, "seed"    # [B
    .param p3, "nonce"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "seed",
            "nonce"
        }
    .end annotation

    .line 88
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 89
    .local v0, "extSeed":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v1, p2

    aput-byte p3, v0, v1

    .line 91
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 92
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 93
    return-void
.end method

.method xofAbsorb([BBB)V
    .locals 4
    .param p1, "seed"    # [B
    .param p2, "a"    # B
    .param p3, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "a",
            "b"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 72
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 73
    .local v0, "buf":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v1, p1

    aput-byte p2, v0, v1

    .line 75
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    aput-byte p3, v0, v1

    .line 76
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, p1

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 77
    return-void
.end method

.method xofSqueezeBlocks([BII)V
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOffset",
            "outLen"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xof:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    .line 83
    return-void
.end method

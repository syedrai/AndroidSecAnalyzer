.class Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShakeSymmetric"
.end annotation


# instance fields
.field private final sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

.field private final shakeDigest:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;-><init>()V

    .line 31
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/Xof;

    .line 32
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    .line 33
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    .line 34
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

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->sha3Digest512:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 48
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

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->sha3Digest256:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 41
    return-void
.end method

.method prf([B[BII)V
    .locals 2
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .param p3, "inLen"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "inLen",
            "outLen"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->reset()V

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;->shakeDigest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, v1, p4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 56
    return-void
.end method

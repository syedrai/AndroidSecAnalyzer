.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShakeSymmetric"
.end annotation


# instance fields
.field private final digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 98
    const/16 v0, 0xa8

    const/16 v1, 0x88

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;-><init>(II)V

    .line 99
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 100
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 101
    return-void
.end method

.method private streamInit(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[BS)V
    .locals 4
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .param p2, "seed"    # [B
    .param p3, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "seed",
            "nonce"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 113
    .local v0, "temp":[B
    int-to-byte v1, p3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 114
    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 116
    array-length v1, p2

    invoke-virtual {p1, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 117
    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 118
    return-void
.end method


# virtual methods
.method stream128init([BS)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->streamInit(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[BS)V

    .line 125
    return-void
.end method

.method stream128squeezeBlocks([BII)V
    .locals 1
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "size"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest128:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    .line 137
    return-void
.end method

.method stream256init([BS)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->streamInit(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[BS)V

    .line 131
    return-void
.end method

.method stream256squeezeBlocks([BII)V
    .locals 1
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "size"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;->digest256:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    .line 143
    return-void
.end method

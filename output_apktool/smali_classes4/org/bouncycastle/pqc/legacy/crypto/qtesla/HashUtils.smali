.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# static fields
.field static final SECURE_HASH_ALGORITHM_KECCAK_128_RATE:I = 0xa8

.field static final SECURE_HASH_ALGORITHM_KECCAK_256_RATE:I = 0x88


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V
    .locals 5
    .param p0, "output"    # [B
    .param p1, "outputOffset"    # I
    .param p2, "outputLength"    # I
    .param p3, "continuousTimeStochasticModelling"    # S
    .param p4, "input"    # [B
    .param p5, "inputOffset"    # I
    .param p6, "inputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outputOffset",
            "outputLength",
            "continuousTimeStochasticModelling",
            "input",
            "inputOffset",
            "inputLength"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    int-to-byte v1, p3

    shr-int/lit8 v2, p3, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v1, v3, v4

    const/4 v1, 0x1

    aput-byte v2, v3, v1

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    .line 40
    .local v0, "dig":Lorg/bouncycastle/crypto/digests/CSHAKEDigest;
    invoke-virtual {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 42
    invoke-virtual {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    .line 43
    return-void
.end method

.method static customizableSecureHashAlgorithmKECCAK256Simple([BIIS[BII)V
    .locals 5
    .param p0, "output"    # [B
    .param p1, "outputOffset"    # I
    .param p2, "outputLength"    # I
    .param p3, "continuousTimeStochasticModelling"    # S
    .param p4, "input"    # [B
    .param p5, "inputOffset"    # I
    .param p6, "inputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outputOffset",
            "outputLength",
            "continuousTimeStochasticModelling",
            "input",
            "inputOffset",
            "inputLength"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    int-to-byte v1, p3

    shr-int/lit8 v2, p3, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v1, v3, v4

    const/4 v1, 0x1

    aput-byte v2, v3, v1

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    .line 48
    .local v0, "dig":Lorg/bouncycastle/crypto/digests/CSHAKEDigest;
    invoke-virtual {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 50
    invoke-virtual {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    .line 51
    return-void
.end method

.method static secureHashAlgorithmKECCAK128([BII[BII)V
    .locals 2
    .param p0, "output"    # [B
    .param p1, "outputOffset"    # I
    .param p2, "outputLength"    # I
    .param p3, "input"    # [B
    .param p4, "inputOffset"    # I
    .param p5, "inputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outputOffset",
            "outputLength",
            "input",
            "inputOffset",
            "inputLength"
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 18
    .local v0, "dig":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    invoke-virtual {v0, p3, p4, p5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 20
    invoke-virtual {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 21
    return-void
.end method

.method static secureHashAlgorithmKECCAK256([BII[BII)V
    .locals 2
    .param p0, "output"    # [B
    .param p1, "outputOffset"    # I
    .param p2, "outputLength"    # I
    .param p3, "input"    # [B
    .param p4, "inputOffset"    # I
    .param p5, "inputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outputOffset",
            "outputLength",
            "input",
            "inputOffset",
            "inputLength"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 29
    .local v0, "dig":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    invoke-virtual {v0, p3, p4, p5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 31
    invoke-virtual {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 32
    return-void
.end method

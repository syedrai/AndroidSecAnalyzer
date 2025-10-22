.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyParameters;
.source "KyberPrivateKeyParameters.java"


# instance fields
.field final hpk:[B

.field final nonce:[B

.field final rho:[B

.field final s:[B

.field final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V
    .locals 4
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "encoding"
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    move-result-object v0

    .line 30
    .local v0, "eng":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    const/4 v1, 0x0

    .line 31
    .local v1, "index":I
    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaSecretKeyBytes()I

    move-result v3

    invoke-static {p2, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->s:[B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaSecretKeyBytes()I

    move-result v2

    add-int/2addr v1, v2

    .line 32
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaPublicKeyBytes()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x20

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaPublicKeyBytes()I

    move-result v2

    add-int/lit8 v2, v2, -0x20

    add-int/2addr v1, v2

    .line 33
    add-int/lit8 v2, v1, 0x20

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    add-int/lit8 v1, v1, 0x20

    .line 34
    add-int/lit8 v2, v1, 0x20

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->hpk:[B

    add-int/lit8 v1, v1, 0x20

    .line 35
    add-int/lit8 v2, v1, 0x20

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->nonce:[B

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B[B[B[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;
    .param p2, "s"    # [B
    .param p3, "hpk"    # [B
    .param p4, "nonce"    # [B
    .param p5, "t"    # [B
    .param p6, "rho"    # [B
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
            "params",
            "s",
            "hpk",
            "nonce",
            "t",
            "rho"
        }
    .end annotation

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    .line 18
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->s:[B

    .line 19
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->hpk:[B

    .line 20
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->nonce:[B

    .line 21
    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    .line 22
    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    .line 23
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 7

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->s:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->hpk:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->nonce:[B

    const/4 v5, 0x5

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHPK()[B
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->hpk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->nonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    .locals 4

    .line 66
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B)V

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

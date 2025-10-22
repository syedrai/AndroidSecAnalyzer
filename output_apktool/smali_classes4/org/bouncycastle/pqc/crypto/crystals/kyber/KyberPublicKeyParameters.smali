.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyParameters;
.source "KyberPublicKeyParameters.java"


# instance fields
.field final rho:[B

.field final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V
    .locals 2
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

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    .line 26
    array-length v1, p2

    add-int/lit8 v1, v1, -0x20

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->t:[B

    .line 27
    array-length v0, p2

    add-int/lit8 v0, v0, -0x20

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->rho:[B

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;
    .param p2, "t"    # [B
    .param p3, "rho"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "t",
            "rho"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    .line 19
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->t:[B

    .line 20
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->rho:[B

    .line 21
    return-void
.end method

.method static getEncoded([B[B)[B
    .locals 1
    .param p0, "t"    # [B
    .param p1, "rho"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "rho"
        }
    .end annotation

    .line 10
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->t:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->rho:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

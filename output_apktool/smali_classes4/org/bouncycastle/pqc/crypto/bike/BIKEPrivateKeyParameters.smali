.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;
.source "BIKEPrivateKeyParameters.java"


# instance fields
.field private h0:[B

.field private h1:[B

.field private sigma:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B[B[B)V
    .locals 1
    .param p1, "bikeParameters"    # Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
    .param p2, "h0"    # [B
    .param p3, "h1"    # [B
    .param p4, "sigma"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bikeParameters",
            "h0",
            "h1",
            "sigma"
        }
    .end annotation

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    .line 27
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    .line 28
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    .line 29
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    .line 30
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getH0()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    return-object v0
.end method

.method getH1()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    return-object v0
.end method

.method getSigma()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    return-object v0
.end method

.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;
.super Ljava/lang/Object;
.source "BIKEKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;)V
    .locals 1
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privParams"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    .line 17
    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    .line 22
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 9
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getSessionKeySize()I

    move-result v0

    new-array v2, v0, [B

    .line 29
    .local v2, "session_key":[B
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    .line 32
    .local v0, "secretKey":Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v1

    const/4 v8, 0x0

    invoke-static {p1, v8, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 33
    .local v6, "c0":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v1

    array-length v3, p1

    invoke-static {p1, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 35
    .local v7, "c1":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getH0()[B

    move-result-object v3

    .line 36
    .local v3, "h0":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getH1()[B

    move-result-object v4

    .line 37
    .local v4, "h1":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getSigma()[B

    move-result-object v5

    .line 39
    .local v5, "sigma":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->decaps([B[B[B[B[B[B)V

    .line 40
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getSessionKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v2, v8, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public getEncapsulationLength()I
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getLByte()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

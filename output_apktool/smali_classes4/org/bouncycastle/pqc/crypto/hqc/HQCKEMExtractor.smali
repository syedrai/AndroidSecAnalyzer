.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;
.super Ljava/lang/Object;
.source "HQCKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;)V
    .locals 1
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privParams"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    .line 17
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    .line 18
    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    .line 23
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 5
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->getSessionKeySize()I

    move-result v0

    new-array v0, v0, [B

    .line 28
    .local v0, "session_key":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    .line 29
    .local v1, "secretKey":Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v2

    .line 31
    .local v2, "sk":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    invoke-virtual {v3, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->decaps([B[B[B)V

    .line 33
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getK()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3
.end method

.method public getEncapsulationLength()I
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN_BYTES()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN1N2_BYTES()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

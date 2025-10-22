.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;
.super Ljava/lang/Object;
.source "CMCEKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;)V
    .locals 1
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privParams"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    .line 16
    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 5
    .param p1, "param"    # Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    .line 22
    .local v0, "privateParams":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 24
    new-instance v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decompress_private_key([B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 1
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getDefaultSessionKeySize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->extractSecret([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public extractSecret([BI)[B
    .locals 3
    .param p1, "encapsulation"    # [B
    .param p2, "sessionKeySizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encapsulation",
            "sessionKeySizeInBits"
        }
    .end annotation

    .line 35
    div-int/lit8 v0, p2, 0x8

    new-array v0, v0, [B

    .line 36
    .local v0, "session_key":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_dec([B[B[B)I

    .line 37
    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method

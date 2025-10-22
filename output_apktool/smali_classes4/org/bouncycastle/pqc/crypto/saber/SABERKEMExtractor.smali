.class public Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;
.super Ljava/lang/Object;
.source "SABERKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private key:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;)V
    .locals 1
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;
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
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    .line 16
    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    .line 20
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 3
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSessionKeySize()I

    move-result v0

    new-array v0, v0, [B

    .line 25
    .local v0, "session_key":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->crypto_kem_dec([B[B[B)I

    .line 26
    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method

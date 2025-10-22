.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;
.super Ljava/lang/Object;
.source "FrodoKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;)V
    .locals 1
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;
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
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    .line 16
    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    .line 21
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

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getSessionKeySize()I

    move-result v0

    new-array v0, v0, [B

    .line 27
    .local v0, "session_key":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->kem_dec([B[B[B)V

    .line 28
    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method

.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;
.source "FrodoPublicKeyParameters.java"


# instance fields
.field public publicKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "publicKey"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    .line 24
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->publicKey:[B

    .line 25
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->getPublicKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->publicKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

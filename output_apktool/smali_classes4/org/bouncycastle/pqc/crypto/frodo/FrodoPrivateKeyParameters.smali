.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;
.source "FrodoPrivateKeyParameters.java"


# instance fields
.field private privateKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .param p2, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "privateKey"
        }
    .end annotation

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    .line 18
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->privateKey:[B

    .line 19
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

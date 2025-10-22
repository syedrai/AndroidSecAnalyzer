.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;
.source "CMCEPublicKeyParameters.java"


# instance fields
.field private final publicKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
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

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    .line 23
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->publicKey:[B

    .line 24
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getPublicKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->publicKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;
.source "BIKEPublicKeyParameters.java"


# instance fields
.field publicKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
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

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V

    .line 18
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->publicKey:[B

    .line 19
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->publicKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

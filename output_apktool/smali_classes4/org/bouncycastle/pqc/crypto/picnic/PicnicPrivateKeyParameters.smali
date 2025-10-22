.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;
.source "PicnicPrivateKeyParameters.java"


# instance fields
.field private final privateKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .param p2, "skEncoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "skEncoded"
        }
    .end annotation

    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    .line 13
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->privateKey:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

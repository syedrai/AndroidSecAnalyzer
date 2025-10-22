.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;
.source "GeMSSPublicKeyParameters.java"


# instance fields
.field private final pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V
    .locals 3
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .param p2, "pkValues"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "pkValues"
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V

    .line 13
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    .line 14
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    array-length v2, v2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPK()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->pk:[B

    return-object v0
.end method

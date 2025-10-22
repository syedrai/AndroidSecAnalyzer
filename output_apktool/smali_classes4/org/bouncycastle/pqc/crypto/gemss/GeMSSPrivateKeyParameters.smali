.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;
.source "GeMSSPrivateKeyParameters.java"


# instance fields
.field final sk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V
    .locals 3
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .param p2, "skValues"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "skValues"
        }
    .end annotation

    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V

    .line 12
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    .line 13
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    array-length v2, v2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

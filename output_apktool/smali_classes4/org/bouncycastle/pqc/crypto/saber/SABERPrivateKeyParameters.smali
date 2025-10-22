.class public Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;
.source "SABERPrivateKeyParameters.java"


# instance fields
.field private privateKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
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

    .line 12
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    .line 13
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;->privateKey:[B

    .line 14
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

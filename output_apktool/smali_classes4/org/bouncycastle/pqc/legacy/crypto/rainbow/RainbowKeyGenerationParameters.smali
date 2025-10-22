.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "RainbowKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;)V
    .locals 3
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "params"
        }
    .end annotation

    .line 17
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;

    return-object v0
.end method

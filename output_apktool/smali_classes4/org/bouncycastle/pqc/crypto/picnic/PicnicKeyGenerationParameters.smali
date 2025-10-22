.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "PicnicKeyGenerationParameters.java"


# instance fields
.field private final parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "parameters"
        }
    .end annotation

    .line 14
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-object v0
.end method

.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "GeMSSKeyGenerationParameters.java"


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
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
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object v0
.end method

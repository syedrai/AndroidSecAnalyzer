.class public Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "CramerShoupKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/CramerShoupParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/CramerShoupParameters;
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

    .line 15
    invoke-static {p2}, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->getStrength(Lorg/bouncycastle/crypto/params/CramerShoupParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 17
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    .line 18
    return-void
.end method

.method static getStrength(Lorg/bouncycastle/crypto/params/CramerShoupParameters;)I
    .locals 1
    .param p0, "params"    # Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method

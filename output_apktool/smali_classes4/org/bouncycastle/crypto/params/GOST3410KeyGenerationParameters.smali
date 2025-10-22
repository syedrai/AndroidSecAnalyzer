.class public Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "GOST3410KeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/GOST3410Parameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/GOST3410Parameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/GOST3410Parameters;
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

    .line 16
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/GOST3410Parameters;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    return-object v0
.end method

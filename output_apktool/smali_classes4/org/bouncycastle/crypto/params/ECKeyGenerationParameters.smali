.class public Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "ECKeyGenerationParameters.java"


# instance fields
.field private domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "domainParams"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "domainParams",
            "random"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getDomainParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method

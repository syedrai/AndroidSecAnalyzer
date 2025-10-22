.class public Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "SABERKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "saberParameters"    # Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "saberParameters"
        }
    .end annotation

    .line 16
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 17
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    .line 18
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    return-object v0
.end method

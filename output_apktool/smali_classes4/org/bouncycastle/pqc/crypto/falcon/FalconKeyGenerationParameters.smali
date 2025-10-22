.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "FalconKeyGenerationParameters.java"


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
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

    .line 15
    const/16 v0, 0x140

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 17
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    return-object v0
.end method

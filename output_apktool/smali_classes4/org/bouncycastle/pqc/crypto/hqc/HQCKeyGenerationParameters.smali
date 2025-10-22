.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "HQCKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;
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
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 17
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    .line 18
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    return-object v0
.end method

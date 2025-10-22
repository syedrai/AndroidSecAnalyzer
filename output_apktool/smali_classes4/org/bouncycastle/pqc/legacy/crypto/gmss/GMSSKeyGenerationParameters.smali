.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "GMSSKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
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

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 19
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 20
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    return-object v0
.end method

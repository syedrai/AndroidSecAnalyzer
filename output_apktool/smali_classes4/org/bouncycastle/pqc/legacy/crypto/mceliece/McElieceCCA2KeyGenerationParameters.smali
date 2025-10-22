.class public Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "McElieceCCA2KeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;
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
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2Parameters;

    return-object v0
.end method

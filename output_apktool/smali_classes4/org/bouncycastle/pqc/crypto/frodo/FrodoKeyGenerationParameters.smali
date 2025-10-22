.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "FrodoKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "frodoParameters"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "frodoParameters"
        }
    .end annotation

    .line 16
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 17
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    .line 18
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-object v0
.end method

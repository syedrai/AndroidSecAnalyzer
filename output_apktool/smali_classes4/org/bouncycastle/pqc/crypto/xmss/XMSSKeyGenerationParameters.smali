.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "XMSSKeyGenerationParameters.java"


# instance fields
.field private final xmssParameters:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "xmssParameters"    # Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .param p2, "prng"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xmssParameters",
            "prng"
        }
    .end annotation

    .line 22
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;->xmssParameters:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    .line 25
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;->xmssParameters:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

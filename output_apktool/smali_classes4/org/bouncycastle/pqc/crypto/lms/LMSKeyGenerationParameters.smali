.class public Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "LMSKeyGenerationParameters.java"


# instance fields
.field private final lmsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "lmsParameters"    # Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lmsParameters",
            "random"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->calculateStrength(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;->lmsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    .line 22
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;->lmsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    return-object v0
.end method

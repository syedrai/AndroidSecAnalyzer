.class public Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "HSSKeyGenerationParameters.java"


# instance fields
.field private final lmsParameters:[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "lmsParameters"    # [Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
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

    .line 22
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->calculateStrength(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 23
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->lmsParameters:[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    .line 28
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lmsParameters length should be between 1 and 8 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->lmsParameters:[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    array-length v0, v0

    return v0
.end method

.method public getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->lmsParameters:[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    return-object v0
.end method

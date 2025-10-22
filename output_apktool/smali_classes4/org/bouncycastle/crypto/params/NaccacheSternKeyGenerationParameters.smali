.class public Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "NaccacheSternKeyGenerationParameters.java"


# instance fields
.field private certainty:I

.field private cntSmallPrimes:I

.field private debug:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;III)V
    .locals 6
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "strength"    # I
    .param p3, "certainty"    # I
    .param p4, "cntSmallPrimes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "random",
            "strength",
            "certainty",
            "cntSmallPrimes"
        }
    .end annotation

    .line 38
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "random":Ljava/security/SecureRandom;
    .end local p2    # "strength":I
    .end local p3    # "certainty":I
    .end local p4    # "cntSmallPrimes":I
    .local v1, "random":Ljava/security/SecureRandom;
    .local v2, "strength":I
    .local v3, "certainty":I
    .local v4, "cntSmallPrimes":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;IIIZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;IIIZ)V
    .locals 2
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "strength"    # I
    .param p3, "certainty"    # I
    .param p4, "cntSmallPrimes"    # I
    .param p5, "debug"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "random",
            "strength",
            "certainty",
            "cntSmallPrimes",
            "debug"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    .line 62
    iput p3, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->certainty:I

    .line 63
    rem-int/lit8 v0, p4, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 67
    const/16 v0, 0x1e

    if-lt p4, v0, :cond_0

    .line 71
    iput p4, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->cntSmallPrimes:I

    .line 73
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    .line 74
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cntSmallPrimes must be >= 30 for security reasons"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cntSmallPrimes must be a multiple of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertainty()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->certainty:I

    return v0
.end method

.method public getCntSmallPrimes()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->cntSmallPrimes:I

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    return v0
.end method

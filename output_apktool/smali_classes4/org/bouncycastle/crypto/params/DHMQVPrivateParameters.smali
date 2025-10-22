.class public Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;
.super Ljava/lang/Object;
.source "DHMQVPrivateParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private ephemeralPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field private staticPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .locals 1
    .param p1, "staticPrivateKey"    # Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .param p2, "ephemeralPrivateKey"    # Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "staticPrivateKey",
            "ephemeralPrivateKey"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 5
    .param p1, "staticPrivateKey"    # Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .param p2, "ephemeralPrivateKey"    # Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .param p3, "ephemeralPublicKey"    # Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "staticPrivateKey",
            "ephemeralPrivateKey",
            "ephemeralPublicKey"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p1, :cond_4

    .line 28
    if-eqz p2, :cond_3

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 34
    .local v0, "parameters":Lorg/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    if-nez p3, :cond_0

    .line 41
    new-instance v1, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    move-object p3, v1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 52
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 53
    return-void

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ephemeral public key has different domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    .end local v0    # "parameters":Lorg/bouncycastle/crypto/params/DHParameters;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ephemeralPrivateKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "staticPrivateKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0
.end method

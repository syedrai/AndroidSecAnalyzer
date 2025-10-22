.class public Lorg/bouncycastle/crypto/params/MQVPrivateParameters;
.super Ljava/lang/Object;
.source "MQVPrivateParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private staticPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .param p1, "staticPrivateKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p2, "ephemeralPrivateKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
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

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 4
    .param p1, "staticPrivateKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p2, "ephemeralPrivateKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "ephemeralPublicKey"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_4

    .line 30
    if-eqz p2, :cond_3

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 36
    .local v0, "parameters":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    if-nez p3, :cond_0

    .line 43
    new-instance v1, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 45
    .local v1, "q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object p3, v2

    .line 46
    .end local v1    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 54
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 55
    return-void

    .line 49
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ephemeral public key has different domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    .end local v0    # "parameters":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ephemeralPrivateKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "staticPrivateKey cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

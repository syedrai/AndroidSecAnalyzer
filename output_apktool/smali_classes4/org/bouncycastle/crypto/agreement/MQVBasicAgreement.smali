.class public Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;
.super Ljava/lang/Object;
.source "MQVBasicAgreement.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BasicAgreement;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateDHMQVAgreement(Lorg/bouncycastle/crypto/params/DHParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Ljava/math/BigInteger;
    .locals 9
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/params/DHParameters;
    .param p2, "xA"    # Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .param p3, "yB"    # Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .param p4, "rA"    # Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .param p5, "tA"    # Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .param p6, "tB"    # Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "xA",
            "yB",
            "rA",
            "tA",
            "tB"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    .line 73
    .local v0, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 74
    .local v1, "w":I
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 76
    .local v2, "twoW":Ljava/math/BigInteger;
    invoke-virtual {p5}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 77
    .local v3, "TA":Ljava/math/BigInteger;
    invoke-virtual {p4}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 78
    .local v4, "SA":Ljava/math/BigInteger;
    invoke-virtual {p6}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 79
    .local v5, "TB":Ljava/math/BigInteger;
    invoke-virtual {p6}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 81
    .local v6, "Z":Ljava/math/BigInteger;
    return-object v6
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 9
    .param p1, "pubKey"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 37
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHMQVPublicParameters;

    .line 39
    .local v0, "pubParams":Lorg/bouncycastle/crypto/params/DHMQVPublicParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v4

    .line 41
    .local v4, "staticPrivateKey":Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHMQVPublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    .line 52
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHMQVPublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v7

    .line 53
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHMQVPublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v8

    .line 51
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->calculateDHMQVAgreement(Lorg/bouncycastle/crypto/params/DHParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Ljava/math/BigInteger;

    move-result-object v1

    .line 55
    .local v1, "agreement":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    return-object v1

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "1 is not a valid agreement value for MQV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v1    # "agreement":Ljava/math/BigInteger;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MQV key domain parameters do not have Q set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MQV public key components have wrong domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFieldSize()I
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/MQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHMQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    const-string v1, "MQV"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/DHKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 28
    return-void
.end method

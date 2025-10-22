.class public Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source "ECMQVBasicAgreement.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateMqvAgreement(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 16
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .param p2, "d1U"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "d2U"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p4, "Q2U"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p5, "Q1V"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p6, "Q2V"    # Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
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
            "d1U",
            "d2U",
            "Q2U",
            "Q1V",
            "Q2V"
        }
    .end annotation

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 76
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 77
    .local v1, "e":I
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 79
    .local v2, "powE":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 82
    .local v3, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 83
    .local v4, "q2u":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 84
    .local v5, "q1v":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {p6 .. p6}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 86
    .local v6, "q2v":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 87
    .local v7, "x":Ljava/math/BigInteger;
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 88
    .local v8, "xBar":Ljava/math/BigInteger;
    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 89
    .local v9, "Q2UBar":Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 91
    .local v10, "s":Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    .line 92
    .local v11, "xPrime":Ljava/math/BigInteger;
    invoke-virtual {v11, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 93
    .local v12, "xPrimeBar":Ljava/math/BigInteger;
    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 95
    .local v13, "Q2VBar":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 97
    .local v14, "hs":Ljava/math/BigInteger;
    nop

    .line 98
    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 97
    invoke-static {v5, v15, v6, v14}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    return-object v15
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

    .line 39
    const-string v0, "org.bouncycastle.ec.disable_mqv"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;

    .line 46
    .local v0, "pubParams":Lorg/bouncycastle/crypto/params/MQVPublicParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v4

    .line 47
    .local v4, "staticPrivateKey":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 49
    .local v3, "parameters":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    .line 55
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    .line 56
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v8

    .line 54
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->calculateMqvAgreement(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 58
    .local v1, "agreement":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Infinity is not a valid agreement value for MQV"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v1    # "agreement":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECMQV public key components have wrong domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v0    # "pubParams":Lorg/bouncycastle/crypto/params/MQVPublicParameters;
    .end local v3    # "parameters":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v4    # "staticPrivateKey":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECMQV explicitly disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

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

    .line 27
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    const-string v1, "ECMQV"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 30
    return-void
.end method

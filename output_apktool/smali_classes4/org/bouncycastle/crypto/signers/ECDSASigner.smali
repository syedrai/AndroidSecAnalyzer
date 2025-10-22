.class public Lorg/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECConstants;
.implements Lorg/bouncycastle/crypto/DSAExt;


# instance fields
.field private final kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lorg/bouncycastle/crypto/signers/DSAKCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kCalculator"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    .line 50
    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "message"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 225
    .local v0, "log2n":I
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    .line 227
    .local v1, "messageBitLength":I
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 228
    .local v2, "e":Ljava/math/BigInteger;
    if-ge v0, v1, :cond_0

    .line 230
    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 232
    :cond_0
    return-object v2
.end method

.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 237
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 9
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 99
    .local v0, "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 100
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 101
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    .line 103
    .local v3, "d":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v1, v3, p1}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    .line 122
    .local v4, "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v5

    .line 124
    .local v5, "k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 127
    .local v6, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 129
    .local v6, "r":Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 131
    invoke-static {v1, v5}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 133
    .local v5, "s":Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    return-object v7
.end method

.method protected getDenominator(ILorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "coordinateSystem"    # I
    .param p2, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coordinateSystem",
            "p"
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 251
    :pswitch_1
    invoke-virtual {p2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_2
    invoke-virtual {p2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1

    .line 60
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 62
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 64
    .local v1, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 65
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 66
    .end local v1    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 69
    :cond_0
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 74
    :cond_1
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 77
    :goto_0
    const-string v1, "ECDSA"

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 79
    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 80
    return-void
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "needed",
            "provided"
        }
    .end annotation

    .line 259
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 18
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "r",
            "s"
        }
    .end annotation

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 150
    .local v3, "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 151
    .local v4, "n":Ljava/math/BigInteger;
    move-object/from16 v5, p1

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v6

    .line 154
    .local v6, "e":Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    const/4 v8, 0x0

    if-ltz v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 160
    :cond_0
    sget-object v7, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_6

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_1

    const/16 v16, 0x0

    goto/16 :goto_1

    .line 165
    :cond_1
    invoke-static {v4, v2}, Lorg/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 167
    .local v7, "c":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 168
    .local v9, "u1":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 170
    .local v10, "u2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 171
    .local v11, "G":Lorg/bouncycastle/math/ec/ECPoint;
    iget-object v12, v0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v12, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 173
    .local v12, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v11, v9, v12, v10}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 176
    .local v13, "point":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 178
    return v8

    .line 194
    :cond_2
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v14

    .line 195
    .local v14, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    if-eqz v14, :cond_5

    .line 197
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v15

    .line 198
    .local v15, "cofactor":Ljava/math/BigInteger;
    if-eqz v15, :cond_5

    const/16 v16, 0x0

    sget-object v8, Lorg/bouncycastle/crypto/signers/ECDSASigner;->EIGHT:Ljava/math/BigInteger;

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gtz v8, :cond_5

    .line 200
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    invoke-virtual {v0, v8, v13}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->getDenominator(ILorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 201
    .local v8, "D":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-nez v17, :cond_5

    .line 203
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 204
    .end local p2    # "r":Ljava/math/BigInteger;
    .local v0, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v1, "r":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v14, v1}, Lorg/bouncycastle/math/ec/ECCurve;->isValidFieldElement(Ljava/math/BigInteger;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 206
    invoke-virtual {v14, v1}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 207
    .local v2, "R":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 209
    const/16 v16, 0x1

    return v16

    .line 211
    :cond_3
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 212
    .end local v2    # "R":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v2, p3

    goto :goto_0

    .line 213
    :cond_4
    return v16

    .line 218
    .end local v0    # "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "r":Ljava/math/BigInteger;
    .end local v8    # "D":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "cofactor":Ljava/math/BigInteger;
    .restart local p2    # "r":Ljava/math/BigInteger;
    :cond_5
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 219
    .local v0, "v":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 160
    .end local v0    # "v":Ljava/math/BigInteger;
    .end local v7    # "c":Ljava/math/BigInteger;
    .end local v9    # "u1":Ljava/math/BigInteger;
    .end local v10    # "u2":Ljava/math/BigInteger;
    .end local v11    # "G":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v12    # "Q":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v13    # "point":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v14    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    :cond_6
    const/16 v16, 0x0

    .line 162
    :goto_1
    return v16

    .line 154
    :cond_7
    const/16 v16, 0x0

    .line 156
    :goto_2
    return v16
.end method

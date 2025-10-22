.class public Lorg/bouncycastle/crypto/signers/DSTU4145Signer;
.super Ljava/lang/Object;
.source "DSTU4145Signer.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DSAExt;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fieldElement2Integer(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "fe"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "fe"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->truncate(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static generateRandomInteger(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "random"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static hash2FieldElement(Lorg/bouncycastle/math/ec/ECCurve;[B)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "hash"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object v0

    .line 162
    .local v0, "data":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->truncate(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method private static truncate(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "bitLength"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 174
    sget-object v0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 176
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 148
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 13
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 72
    .local v0, "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 74
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->hash2FieldElement(Lorg/bouncycastle/math/ec/ECCurve;[B)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 75
    .local v2, "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    sget-object v3, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 80
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 84
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v4, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v4

    .line 86
    .local v4, "d":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v5

    .line 94
    .local v5, "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->generateRandomInteger(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 95
    .local v6, "e":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 97
    .local v7, "Fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    .line 99
    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 100
    .local v8, "y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->fieldElement2Integer(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v9

    .line 102
    .local v9, "r":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-eqz v10, :cond_1

    .line 104
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 106
    .local v10, "s":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-eqz v11, :cond_1

    .line 108
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/math/BigInteger;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    return-object v11
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
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

    .line 39
    if-eqz p1, :cond_1

    .line 41
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 45
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->random:Ljava/security/SecureRandom;

    .line 46
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 47
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->random:Ljava/security/SecureRandom;

    .line 53
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_1

    .line 57
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 60
    :goto_1
    const-string v0, "DSTU4145"

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 61
    return-void
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 8
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

    .line 113
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 120
    .local v0, "parameters":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 121
    .local v2, "n":Ljava/math/BigInteger;
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_5

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 128
    .local v3, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->hash2FieldElement(Lorg/bouncycastle/math/ec/ECCurve;[B)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 129
    .local v4, "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    sget-object v5, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 134
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v6, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v5, p3, v6, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 137
    .local v5, "R":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 139
    return v1

    .line 142
    :cond_3
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 143
    .local v6, "y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/signers/DSTU4145Signer;->fieldElement2Integer(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECFieldElement;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-nez v7, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 123
    .end local v3    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v4    # "h":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v6    # "y":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    :goto_0
    return v1

    .line 115
    .end local v0    # "parameters":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v2    # "n":Ljava/math/BigInteger;
    :cond_6
    :goto_1
    return v1
.end method

.class public Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;
.super Ljava/lang/Object;
.source "ECIESKEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private final keySize:I

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "keySize"    # I
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySize",
            "kdf",
            "rnd"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->keySize:I

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 54
    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->rnd:Ljava/security/SecureRandom;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->CofactorMode:Z

    .line 56
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    .line 57
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->SingleHashMode:Z

    .line 58
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 1
    .param p1, "keyLen"    # I
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "rnd"    # Ljava/security/SecureRandom;
    .param p4, "cofactorMode"    # Z
    .param p5, "oldCofactorMode"    # Z
    .param p6, "singleHashMode"    # Z
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
            "keyLen",
            "kdf",
            "rnd",
            "cofactorMode",
            "oldCofactorMode",
            "singleHashMode"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 78
    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->rnd:Ljava/security/SecureRandom;

    .line 79
    iput p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->keySize:I

    .line 83
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->CofactorMode:Z

    .line 85
    if-eqz p4, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    goto :goto_0

    .line 91
    :cond_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    .line 93
    :goto_0
    iput-boolean p6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->SingleHashMode:Z

    .line 94
    return-void
.end method

.method private createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 98
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method static deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B
    .locals 4
    .param p0, "SingleHashMode"    # Z
    .param p1, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p2, "keyLen"    # I
    .param p3, "C"    # [B
    .param p4, "PEH"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "SingleHashMode",
            "kdf",
            "keyLen",
            "C",
            "PEH"
        }
    .end annotation

    .line 149
    move-object v0, p4

    .line 150
    .local v0, "kdfInput":[B
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 152
    invoke-static {p3, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 153
    invoke-static {p4, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 159
    :cond_0
    :try_start_0
    new-instance v2, Lorg/bouncycastle/crypto/params/KDFParameters;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {p1, v2}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 162
    new-array v2, p2, [B

    .line 163
    .local v2, "K":[B
    array-length v3, v2

    invoke-interface {p1, v2, v1, v3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    nop

    .line 170
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 166
    return-object v2

    .line 170
    .end local v2    # "K":[B
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 171
    throw v2
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 19
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    if-eqz v2, :cond_1

    .line 108
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 110
    .local v2, "ecPubKey":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 111
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v4

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v6, "ECIESKem"

    invoke-direct {v3, v6, v4, v1, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 110
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 113
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 114
    .local v3, "ecParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 115
    .local v4, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 116
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    .line 119
    .local v6, "h":Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->ONE:Ljava/math/BigInteger;

    iget-object v8, v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->rnd:Ljava/security/SecureRandom;

    invoke-static {v7, v5, v8}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 122
    .local v7, "r":Ljava/math/BigInteger;
    iget-boolean v8, v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->OldCofactorMode:Z

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    .line 124
    .local v8, "rPrime":Ljava/math/BigInteger;
    :goto_0
    invoke-direct {v0}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v9

    .line 126
    .local v9, "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    const/4 v10, 0x2

    new-array v10, v10, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 127
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-interface {v9, v11, v7}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 128
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11, v8}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    .line 132
    .local v10, "ghTilde":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 134
    aget-object v11, v10, v12

    .local v11, "gTilde":Lorg/bouncycastle/math/ec/ECPoint;
    aget-object v13, v10, v13

    .line 137
    .local v13, "hTilde":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v11, v12}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v14

    .line 138
    .local v14, "C":[B
    array-length v15, v14

    new-array v15, v15, [B

    .line 139
    .local v15, "enc":[B
    array-length v1, v14

    invoke-static {v14, v12, v15, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v1

    .line 144
    .local v1, "PEH":[B
    new-instance v12, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;

    move-object/from16 v16, v2

    .end local v2    # "ecPubKey":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .local v16, "ecPubKey":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    iget-boolean v2, v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->SingleHashMode:Z

    move-object/from16 v17, v3

    .end local v3    # "ecParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .local v17, "ecParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    iget-object v3, v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    move-object/from16 v18, v4

    .end local v4    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .local v18, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget v4, v0, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->keySize:I

    invoke-static {v2, v3, v4, v14, v1}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B

    move-result-object v2

    invoke-direct {v12, v2, v15}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v12

    .line 105
    .end local v1    # "PEH":[B
    .end local v5    # "n":Ljava/math/BigInteger;
    .end local v6    # "h":Ljava/math/BigInteger;
    .end local v7    # "r":Ljava/math/BigInteger;
    .end local v8    # "rPrime":Ljava/math/BigInteger;
    .end local v9    # "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    .end local v10    # "ghTilde":[Lorg/bouncycastle/math/ec/ECPoint;
    .end local v11    # "gTilde":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v13    # "hTilde":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v14    # "C":[B
    .end local v15    # "enc":[B
    .end local v16    # "ecPubKey":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .end local v17    # "ecParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v18    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "EC key required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

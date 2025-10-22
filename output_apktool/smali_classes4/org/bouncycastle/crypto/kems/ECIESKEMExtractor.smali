.class public Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;
.super Ljava/lang/Object;
.source "ECIESKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private final decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyLen:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 1
    .param p1, "decKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p2, "keyLen"    # I
    .param p3, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decKey",
            "keyLen",
            "kdf"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 43
    iput p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    .line 44
    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    .line 46
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    .line 47
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;ZZZ)V
    .locals 4
    .param p1, "decKey"    # Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p2, "keyLen"    # I
    .param p3, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
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
            "decKey",
            "keyLen",
            "kdf",
            "cofactorMode",
            "oldCofactorMode",
            "singleHashMode"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 69
    iput p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    .line 70
    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 74
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    .line 76
    if-eqz p4, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    goto :goto_0

    .line 82
    :cond_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    .line 84
    :goto_0
    iput-boolean p6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    .line 86
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 87
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "ECIESKem"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 86
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 88
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 12
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 93
    .local v0, "ecPrivKey":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 94
    .local v1, "ecParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 95
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 96
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    .line 100
    .local v4, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 101
    .local v5, "gHat":Lorg/bouncycastle/math/ec/ECPoint;
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    if-eqz v6, :cond_1

    .line 103
    :cond_0
    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 106
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v6

    .line 107
    .local v6, "xHat":Ljava/math/BigInteger;
    iget-boolean v7, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getHInv()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 112
    :cond_2
    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 115
    .local v7, "hTilde":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v8

    .line 117
    .local v8, "PEH":[B
    iget-boolean v9, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    iget-object v10, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v11, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    invoke-static {v9, v10, v11, p1, v8}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B

    move-result-object v9

    return-object v9
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

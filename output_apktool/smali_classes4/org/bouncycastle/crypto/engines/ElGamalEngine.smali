.class public Lorg/bouncycastle/crypto/engines/ElGamalEngine;
.super Ljava/lang/Object;
.source "ElGamalEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private bitSize:I

.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    .line 30
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    .line 31
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0

    .line 94
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 108
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 111
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "param"
        }
    .end annotation

    .line 43
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 47
    .local v0, "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    .line 48
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    .line 49
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 52
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    .line 53
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    .line 56
    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 60
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    .line 62
    if-eqz p1, :cond_2

    .line 64
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ElGamalPublicKeyParameters are required for encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-eqz v1, :cond_3

    .line 77
    :goto_1
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    const-string v5, "RSA"

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 78
    return-void

    .line 73
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ElGamalPrivateKeyParameters are required for decryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processBlock([BII)[B
    .locals 19
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    if-eqz v4, :cond_a

    .line 133
    iget-boolean v4, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 134
    iget v4, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->getInputBlockSize()I

    move-result v4

    :goto_0
    nop

    .line 137
    .local v4, "maxLength":I
    const-string v6, "input too large for ElGamal cipher.\n"

    if-gt v3, v4, :cond_9

    .line 142
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    .line 144
    .local v7, "p":Ljava/math/BigInteger;
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v8, v8, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 146
    div-int/lit8 v6, v3, 0x2

    new-array v6, v6, [B

    .line 147
    .local v6, "in1":[B
    div-int/lit8 v8, v3, 0x2

    new-array v8, v8, [B

    .line 149
    .local v8, "in2":[B
    array-length v10, v6

    invoke-static {v1, v2, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length v10, v6

    add-int/2addr v10, v2

    array-length v11, v8

    invoke-static {v1, v10, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 153
    .local v9, "gamma":Ljava/math/BigInteger;
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 155
    .local v10, "phi":Ljava/math/BigInteger;
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    check-cast v5, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    .line 158
    .local v5, "priv":Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
    sget-object v11, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 160
    .local v11, "m":Ljava/math/BigInteger;
    invoke-static {v11}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v12

    return-object v12

    .line 165
    .end local v5    # "priv":Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
    .end local v6    # "in1":[B
    .end local v8    # "in2":[B
    .end local v9    # "gamma":Ljava/math/BigInteger;
    .end local v10    # "phi":Ljava/math/BigInteger;
    .end local v11    # "m":Ljava/math/BigInteger;
    :cond_1
    if-nez v2, :cond_3

    array-length v8, v1

    if-eq v3, v8, :cond_2

    goto :goto_1

    .line 173
    :cond_2
    move-object/from16 v8, p1

    .local v8, "block":[B
    goto :goto_2

    .line 167
    .end local v8    # "block":[B
    :cond_3
    :goto_1
    new-array v8, v3, [B

    .line 169
    .restart local v8    # "block":[B
    invoke-static {v1, v2, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_2
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 178
    .local v10, "input":Ljava/math/BigInteger;
    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-gez v11, :cond_8

    .line 183
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    move-object v11, v6

    check-cast v11, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    .line 185
    .local v11, "pub":Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    .line 186
    .local v12, "pBitLength":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    invoke-static {v12, v6}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 188
    .local v6, "k":Ljava/math/BigInteger;
    :goto_3
    sget-object v13, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    sget-object v13, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-lez v13, :cond_4

    move/from16 v18, v4

    const/4 v4, 0x1

    const/16 v16, 0x0

    goto :goto_6

    .line 193
    :cond_4
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v13

    .line 194
    .local v13, "g":Ljava/math/BigInteger;
    invoke-virtual {v13, v6, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 195
    .local v14, "gamma":Ljava/math/BigInteger;
    invoke-virtual {v11}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 197
    .local v15, "phi":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 198
    .local v9, "out1":[B
    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 199
    .local v5, "out2":[B
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 201
    .local v1, "output":[B
    array-length v2, v9

    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_5

    .line 203
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    move/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "maxLength":I
    .local v18, "maxLength":I
    invoke-static {v9, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 207
    .end local v18    # "maxLength":I
    .restart local v4    # "maxLength":I
    :cond_5
    move/from16 v18, v4

    .end local v4    # "maxLength":I
    .restart local v18    # "maxLength":I
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    array-length v3, v9

    sub-int/2addr v2, v3

    array-length v3, v9

    const/4 v4, 0x0

    invoke-static {v9, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    :goto_4
    array-length v2, v5

    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_6

    .line 212
    array-length v2, v1

    array-length v3, v5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    array-length v3, v5

    sub-int/2addr v3, v4

    invoke-static {v5, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 216
    :cond_6
    array-length v2, v1

    array-length v3, v5

    sub-int/2addr v2, v3

    array-length v3, v5

    const/4 v4, 0x0

    invoke-static {v5, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :goto_5
    return-object v1

    .line 188
    .end local v1    # "output":[B
    .end local v5    # "out2":[B
    .end local v9    # "out1":[B
    .end local v13    # "g":Ljava/math/BigInteger;
    .end local v14    # "gamma":Ljava/math/BigInteger;
    .end local v15    # "phi":Ljava/math/BigInteger;
    .end local v18    # "maxLength":I
    .restart local v4    # "maxLength":I
    :cond_7
    move/from16 v18, v4

    const/4 v4, 0x1

    const/16 v16, 0x0

    .line 190
    .end local v4    # "maxLength":I
    .restart local v18    # "maxLength":I
    :goto_6
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    invoke-static {v12, v1}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v18

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 180
    .end local v6    # "k":Ljava/math/BigInteger;
    .end local v11    # "pub":Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;
    .end local v12    # "pBitLength":I
    .end local v18    # "maxLength":I
    .restart local v4    # "maxLength":I
    :cond_8
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v1, v6}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "block":[B
    .end local v10    # "input":Ljava/math/BigInteger;
    :cond_9
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v1, v6}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v4    # "maxLength":I
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ElGamal engine not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

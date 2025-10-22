.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;
.super Ljava/lang/Object;
.source "NTRUKEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->random:Ljava/security/SecureRandom;

    .line 33
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 16
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 37
    move-object/from16 v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    .line 38
    .local v0, "parameterSet":Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    .line 39
    .local v1, "sampling":Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    .line 42
    .local v2, "owcpa":Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v3

    new-array v3, v3, [B

    .line 43
    .local v3, "rm":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleRmBytes()I

    move-result v4

    new-array v4, v4, [B

    .line 45
    .local v4, "rmSeed":[B
    move-object/from16 v5, p0

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleRm([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    move-result-object v6

    .line 48
    .local v6, "pair":Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->r()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v7

    .line 49
    .local v7, "r":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->m()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v8

    .line 51
    .local v8, "m":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v9

    .line 52
    .local v9, "rm1":[B
    array-length v10, v9

    const/4 v11, 0x0

    invoke-static {v9, v11, v3, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v10, v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-virtual {v8, v10}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v10

    .line 54
    .local v10, "rm2":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v12

    array-length v13, v10

    invoke-static {v10, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance v12, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v13, 0x100

    invoke-direct {v12, v13}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 57
    .local v12, "sha3256":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    array-length v13, v3

    invoke-virtual {v12, v3, v11, v13}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 59
    invoke-virtual {v12}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v13

    new-array v13, v13, [B

    .line 61
    .local v13, "k":[B
    invoke-virtual {v12, v13, v11}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 63
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    .line 64
    move-object/from16 v14, p1

    check-cast v14, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->publicKey:[B

    invoke-virtual {v2, v7, v8, v14}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->encrypt(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;[B)[B

    move-result-object v14

    .line 66
    .local v14, "c":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result v15

    invoke-static {v13, v11, v15}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 68
    .local v11, "sharedKey":[B
    invoke-static {v13}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 70
    new-instance v15, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v15, v11, v14}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v15
.end method

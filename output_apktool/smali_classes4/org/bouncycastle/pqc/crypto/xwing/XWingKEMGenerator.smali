.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;
.super Ljava/lang/Object;
.source "XWingKEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    .line 28
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 14
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 32
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;

    .line 34
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 36
    .local v1, "kybKem":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getKyberPublicKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v2

    .line 37
    .local v2, "kybSecWithEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    new-instance v3, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    .line 38
    .local v3, "xdhAgree":Lorg/bouncycastle/crypto/agreement/X25519Agreement;
    invoke-interface {v2}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v4

    .line 39
    .local v4, "kybSecret":[B
    array-length v5, v4

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v6

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 41
    .local v5, "k":[B
    array-length v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 45
    new-instance v6, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v6}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    .line 47
    .local v6, "xdhGen":Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;
    new-instance v8, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v6, v8}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 49
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v8

    .line 51
    .local v8, "ephXdh":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 53
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v3, v9, v5, v10}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 55
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 57
    .local v9, "ephXdhPub":Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    new-instance v10, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v11, 0x100

    invoke-direct {v10, v11}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 59
    .local v10, "sha3":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    const-string v11, "\\.//^\\"

    invoke-static {v11}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v7, v12}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 60
    array-length v11, v5

    invoke-virtual {v10, v5, v7, v11}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 61
    invoke-virtual {v9}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v10, v11, v7, v12}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v10, v11, v7, v12}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 64
    new-array v11, v12, [B

    .line 66
    .local v11, "kemSecret":[B
    invoke-virtual {v10, v11, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 68
    new-instance v7, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v12

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v13

    invoke-static {v12, v13}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v7
.end method

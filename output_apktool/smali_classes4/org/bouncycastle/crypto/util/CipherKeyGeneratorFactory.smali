.class public Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;
.super Ljava/lang/Object;
.source "CipherKeyGeneratorFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "keySize"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    .line 126
    .local v0, "keyGen":Lorg/bouncycastle/crypto/CipherKeyGenerator;
    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 128
    return-object v0
.end method

.method public static createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/CipherKeyGenerator;
    .locals 4
    .param p0, "algorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/16 v2, 0xc0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/16 v3, 0x100

    if-eqz v0, :cond_2

    .line 46
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 48
    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 52
    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 56
    :cond_4
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 60
    :cond_5
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 64
    :cond_6
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 68
    :cond_7
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 72
    :cond_8
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    new-instance v0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    .line 76
    .local v0, "keyGen":Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 78
    return-object v0

    .line 80
    .end local v0    # "keyGen":Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
    :cond_9
    sget-object v0, Lorg/bouncycastle/internal/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 84
    :cond_a
    sget-object v0, Lorg/bouncycastle/internal/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 88
    :cond_b
    sget-object v0, Lorg/bouncycastle/internal/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 92
    :cond_c
    sget-object v0, Lorg/bouncycastle/internal/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 96
    :cond_d
    sget-object v0, Lorg/bouncycastle/crypto/util/AlgorithmIdentifierFactory;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 100
    :cond_e
    sget-object v0, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    new-instance v0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    .line 104
    .local v0, "keyGen":Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 106
    return-object v0

    .line 108
    .end local v0    # "keyGen":Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
    :cond_f
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 110
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 112
    :cond_10
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 114
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    return-object v0

    .line 118
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot recognise cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

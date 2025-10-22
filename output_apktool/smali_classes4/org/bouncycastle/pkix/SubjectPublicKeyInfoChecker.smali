.class public Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfoChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;,
        Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;
    }
.end annotation


# static fields
.field private static final SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final validatedMods:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

.field private static final validatedQs:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;-><init>(Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker-IA;)V

    sput-object v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validatedQs:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    .line 34
    new-instance v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;-><init>(Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker-IA;)V

    sput-object v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validatedMods:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 10
    .param p0, "pubInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubInfo"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 47
    .local v0, "algorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 49
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v1

    .line 50
    .local v1, "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 56
    .local v3, "ecParameters":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X9FieldID;

    move-result-object v2

    .line 57
    .local v2, "fieldID":Lorg/bouncycastle/asn1/x9/X9FieldID;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9FieldID;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 61
    .local v4, "q":Ljava/math/BigInteger;
    sget-object v5, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validatedQs:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    return-void

    .line 66
    :cond_1
    const-string v5, "org.bouncycastle.ec.fp_max_size"

    const/16 v6, 0x412

    invoke-static {v5, v6}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->asInteger(Ljava/lang/String;I)I

    move-result v5

    .line 67
    .local v5, "maxBitLength":I
    const-string v6, "org.bouncycastle.ec.fp_certainty"

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->asInteger(Ljava/lang/String;I)I

    move-result v6

    .line 69
    .local v6, "certainty":I
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    .line 70
    .local v7, "qBitLength":I
    if-lt v5, v7, :cond_3

    .line 74
    invoke-static {v4}, Lorg/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-static {v7, v6}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->getNumberOfIterations(II)I

    move-result v9

    .line 74
    invoke-static {v4, v8, v9}, Lorg/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    sget-object v8, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validatedQs:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    invoke-virtual {v8, v4}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;->add(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Fp q value not prime"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Fp q value out of range"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 82
    .end local v1    # "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    .end local v2    # "fieldID":Lorg/bouncycastle/asn1/x9/X9FieldID;
    .end local v3    # "ecParameters":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "q":Ljava/math/BigInteger;
    .end local v5    # "maxBitLength":I
    .end local v6    # "certainty":I
    .end local v7    # "qBitLength":I
    :cond_4
    :goto_0
    goto :goto_2

    .line 52
    .restart local v1    # "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    :cond_5
    :goto_1
    return-void

    .line 83
    .end local v1    # "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    :cond_6
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 91
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v1, "params":Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;
    nop

    .line 98
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 103
    sget-object v2, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validatedMods:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 105
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validate(Ljava/math/BigInteger;)V

    .line 107
    sget-object v2, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->validatedMods:Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Cache;->add(Ljava/math/BigInteger;)V

    .line 110
    .end local v1    # "params":Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;
    :cond_8
    :goto_2
    return-void

    .line 100
    .restart local v1    # "params":Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "RSA publicExponent is even"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1    # "params":Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unable to parse RSA key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getNumberOfIterations(II)I
    .locals 4
    .param p0, "bits"    # I
    .param p1, "certainty"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bits",
            "certainty"
        }
    .end annotation

    .line 169
    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_2

    .line 171
    if-gt p1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 172
    :cond_0
    const/16 v0, 0x80

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    add-int/lit8 v0, p1, -0x80

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 171
    :goto_0
    return v1

    .line 175
    :cond_2
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_5

    .line 177
    if-gt p1, v2, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    const/16 v0, 0x70

    if-gt p1, v0, :cond_4

    const/4 v1, 0x5

    goto :goto_1

    .line 179
    :cond_4
    add-int/lit8 v0, p1, -0x70

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x5

    .line 177
    :goto_1
    return v1

    .line 181
    :cond_5
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_8

    .line 183
    if-gt p1, v1, :cond_6

    goto :goto_2

    .line 184
    :cond_6
    const/4 v3, 0x7

    if-gt p1, v2, :cond_7

    goto :goto_2

    .line 185
    :cond_7
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 183
    :goto_2
    return v3

    .line 189
    :cond_8
    const/16 v0, 0x28

    if-gt p1, v1, :cond_9

    goto :goto_3

    .line 190
    :cond_9
    add-int/lit8 v1, p1, -0x50

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 189
    :goto_3
    return v0
.end method

.method private static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 3
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulus"
        }
    .end annotation

    .line 114
    move-object v0, p0

    .local v0, "M":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    .line 115
    .local v1, "X":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    .line 117
    sget-object v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    .line 118
    move-object v1, p0

    .line 121
    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/util/BigIntegers;->modOddIsCoprimeVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static removeThreadOverride(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 214
    invoke-static {p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->removeThreadOverride(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setThreadOverride(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyName",
            "enable"
        }
    .end annotation

    .line 203
    invoke-static {p0, p1}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->setThreadOverride(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static validate(Ljava/math/BigInteger;)V
    .locals 6
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulus"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 132
    const-string v0, "org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {v0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    const-string v0, "org.bouncycastle.rsa.max_size"

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->asInteger(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "maxBitLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 143
    invoke-static {p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 149
    .local v1, "bits":I
    const/16 v2, 0x600

    if-lt v1, v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 150
    :cond_1
    const/16 v2, 0x400

    if-lt v1, v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 151
    :cond_2
    const/16 v2, 0x200

    if-lt v1, v2, :cond_3

    const/4 v2, 0x7

    goto :goto_0

    .line 152
    :cond_3
    const/16 v2, 0x32

    :goto_0
    nop

    .line 154
    .local v2, "iterations":I
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lorg/bouncycastle/math/Primes;->enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v3

    .line 156
    .local v3, "mr":Lorg/bouncycastle/math/Primes$MROutput;
    invoke-virtual {v3}, Lorg/bouncycastle/math/Primes$MROutput;->isProvablyComposite()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    return-void

    .line 158
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "RSA modulus is not composite"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .end local v1    # "bits":I
    .end local v2    # "iterations":I
    .end local v3    # "mr":Lorg/bouncycastle/math/Primes$MROutput;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RSA modulus has a small prime factor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RSA modulus out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "maxBitLength":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

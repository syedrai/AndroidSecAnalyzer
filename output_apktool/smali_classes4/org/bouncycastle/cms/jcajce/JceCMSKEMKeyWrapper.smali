.class Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
.super Lorg/bouncycastle/cms/KEMKeyWrapper;
.source "JceCMSKEMKeyWrapper.java"


# static fields
.field private static encLengths:Ljava/util/Map;


# instance fields
.field private encapsulation:[B

.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

.field private kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final kekLength:I

.field private publicKey:Ljava/security/PublicKey;

.field private random:Ljava/security/SecureRandom;

.field private final symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    .line 185
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->kyber512:Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x300

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->kyber768:Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x440

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->kyber1024:Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x620

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps2048509:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bb

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps2048677:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhps4096821:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4ce

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->ntruhrss701:Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x472

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "symWrapAlg"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "symWrapAlg"
        }
    .end annotation

    .line 46
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->id_kem_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/KEMKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 37
    new-instance v0, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->extraMappings:Ljava/util/Map;

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getKekSize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    .line 51
    return-void
.end method

.method private getKemEncLength(Ljava/security/PublicKey;)I
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 197
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/interfaces/KyberPublicKey;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/jcajce/interfaces/KyberPublicKey;

    invoke-interface {v1}, Lorg/bouncycastle/pqc/jcajce/interfaces/KyberPublicKey;->getParameterSpec()Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/KyberParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 201
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/interfaces/NTRUKey;

    if-eqz v0, :cond_1

    .line 203
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encLengths:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/jcajce/interfaces/NTRUKey;

    invoke-interface {v1}, Lorg/bouncycastle/pqc/jcajce/interfaces/NTRUKey;->getParameterSpec()Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRUParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 8
    .param p1, "encryptionKey"    # Lorg/bouncycastle/operator/GenericKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    .line 126
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->getEncoded()[B

    move-result-object v0

    .line 128
    .local v0, "oriInfoEnc":[B
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "Unable to wrap contents key: "

    if-eqz v1, :cond_0

    .line 130
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    .local v1, "keyEncryptionCipher":Ljavax/crypto/Cipher;
    :try_start_2
    new-instance v5, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v5

    .line 136
    .local v5, "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3, v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 138
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v3

    .line 140
    .local v3, "encWithKey":[B
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v6}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    .line 142
    .local v6, "modLength":I
    invoke-static {v3, v2, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encapsulation:[B

    .line 144
    array-length v2, v3

    invoke-static {v3, v6, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 146
    .end local v3    # "encWithKey":[B
    .end local v5    # "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    .end local v6    # "modLength":I
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lorg/bouncycastle/operator/OperatorException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "encryptionKey":Lorg/bouncycastle/operator/GenericKey;
    throw v3

    .line 153
    .end local v1    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p1    # "encryptionKey":Lorg/bouncycastle/operator/GenericKey;
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 157
    .restart local v1    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    :try_start_4
    new-instance v5, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v5

    .line 159
    .restart local v5    # "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3, v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 161
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v3

    .line 163
    .restart local v3    # "encWithKey":[B
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    invoke-direct {p0, v6}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->getKemEncLength(Ljava/security/PublicKey;)I

    move-result v6

    .line 165
    .local v6, "encLength":I
    invoke-static {v3, v2, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encapsulation:[B

    .line 167
    array-length v2, v3

    invoke-static {v3, v6, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v2

    .line 169
    .end local v3    # "encWithKey":[B
    .end local v5    # "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    .end local v6    # "encLength":I
    :catch_1
    move-exception v2

    .line 171
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Lorg/bouncycastle/operator/OperatorException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "encryptionKey":Lorg/bouncycastle/operator/GenericKey;
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 175
    .end local v0    # "oriInfoEnc":[B
    .end local v1    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p1    # "encryptionKey":Lorg/bouncycastle/operator/GenericKey;
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to wrap contents key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncapsulation()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encapsulation:[B

    return-object v0
.end method

.method public getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKekLength()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    return v0
.end method

.method public getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 1
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "algorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "algorithmName"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object p0
.end method

.method public setKDF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 0
    .param p1, "kdfAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdfAlgorithm"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 71
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 64
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 57
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
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

    .line 76
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 78
    return-object p0
.end method

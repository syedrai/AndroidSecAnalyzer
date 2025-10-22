.class Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;
.source "JceCMSKEMKeyUnwrapper.java"


# instance fields
.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

.field private final kekLength:I

.field private privateKey:Ljava/security/PrivateKey;

.field private final symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "symWrapAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "symWrapAlg",
            "privateKey"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 30
    new-instance v0, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->extraMappings:Ljava/util/Map;

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    move-result-object v0

    .line 40
    .local v0, "gktParams":Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getWrap()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getKekSize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    .line 43
    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .locals 9
    .param p1, "encryptionKeyAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "encryptedKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptionKeyAlgorithm",
            "encryptedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    move-result-object v0

    .line 95
    .local v0, "kemInfo":Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getWrap()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 98
    .local v1, "symWrapAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_0
    new-instance v2, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;

    iget v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getUkm()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->getEncoded()[B

    move-result-object v2

    .line 100
    .local v2, "oriInfoEnc":[B
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    instance-of v3, v3, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v3, "keyEncryptionCipher":Ljavax/crypto/Cipher;
    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "wrapAlgorithmName":Ljava/lang/String;
    new-instance v7, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget v8, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    mul-int/lit8 v8, v8, 0x8

    invoke-direct {v7, v6, v8, v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v7

    .line 109
    .local v7, "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 111
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {v5, v8}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v4

    .line 113
    .local v4, "wrapKey":Ljava/security/Key;
    new-instance v5, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    invoke-direct {v5, p1, v4}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    .line 115
    .end local v4    # "wrapKey":Ljava/security/Key;
    .end local v6    # "wrapAlgorithmName":Ljava/lang/String;
    .end local v7    # "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lorg/bouncycastle/operator/OperatorException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to wrap contents key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "kemInfo":Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
    .end local v1    # "symWrapAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p1    # "encryptionKeyAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p2    # "encryptedKey":[B
    throw v5

    .line 122
    .end local v3    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "kemInfo":Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
    .restart local v1    # "symWrapAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p1    # "encryptionKeyAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p2    # "encryptedKey":[B
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 124
    .restart local v3    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .restart local v6    # "wrapAlgorithmName":Ljava/lang/String;
    new-instance v7, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget v8, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    mul-int/lit8 v8, v8, 0x8

    invoke-direct {v7, v6, v8, v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v7

    .line 127
    .restart local v7    # "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 129
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {v5, v8}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v4

    .line 131
    .local v4, "wrapKey":Ljava/security/Key;
    new-instance v5, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    invoke-direct {v5, p1, v4}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    .line 134
    .end local v2    # "oriInfoEnc":[B
    .end local v3    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    .end local v4    # "wrapKey":Ljava/security/Key;
    .end local v6    # "wrapAlgorithmName":Ljava/lang/String;
    .end local v7    # "ktsSpec":Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;
    :catch_1
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/operator/OperatorException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception encrypting key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getKekLength()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    return v0
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
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

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
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

    .line 54
    new-instance v0, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 56
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
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

    .line 47
    new-instance v0, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 49
    return-object p0
.end method

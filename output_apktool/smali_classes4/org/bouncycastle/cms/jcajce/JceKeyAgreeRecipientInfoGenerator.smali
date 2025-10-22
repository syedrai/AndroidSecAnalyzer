.class public Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;
.source "JceKeyAgreeRecipientInfoGenerator.java"


# static fields
.field private static ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# instance fields
.field private ephemeralKP:Ljava/security/KeyPair;

.field private helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private random:Ljava/security/SecureRandom;

.field private recipientIDs:Ljava/util/List;

.field private recipientKeys:Ljava/util/List;

.field private senderPrivateKey:Ljava/security/PrivateKey;

.field private senderPublicKey:Ljava/security/PublicKey;

.field private userKeyingMaterial:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 311
    new-instance v0, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p1, "keyAgreementOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "senderPrivateKey"    # Ljava/security/PrivateKey;
    .param p3, "senderPublicKey"    # Ljava/security/PublicKey;
    .param p4, "keyEncryptionOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyAgreementOID",
            "senderPrivateKey",
            "senderPublicKey",
            "keyEncryptionOID"
        }
    .end annotation

    .line 66
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 52
    new-instance v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    .line 59
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 68
    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPublicKey:Ljava/security/PublicKey;

    .line 69
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPrivateKey:Ljava/security/PrivateKey;

    .line 70
    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 5
    .param p1, "keyAgreementOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyAgreementOID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 284
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPublicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 292
    .local v0, "pubInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 294
    .local v1, "ecAlgParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 296
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyPairGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 298
    .local v2, "ephemKPG":Ljava/security/KeyPairGenerator;
    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 300
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "pubInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v1    # "ecAlgParams":Ljava/security/AlgorithmParameters;
    .end local v2    # "ephemKPG":Ljava/security/KeyPairGenerator;
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot determine MQV ephemeral key pair parameters from public key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 3
    .param p1, "recipientCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientCert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getIssuerAndSerialNumber(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method

.method public addRecipient([BLjava/security/PublicKey;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 3
    .param p1, "subjectKeyID"    # [B
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subjectKeyID",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public generateRecipientEncryptedKeys(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 17
    .param p1, "keyAgreeAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "contentEncryptionKey"    # Lorg/bouncycastle/operator/GenericKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyAgreeAlgorithm",
            "keyEncryptionAlgorithm",
            "contentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 136
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-object v0, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 143
    iget-object v3, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPrivateKey:Ljava/security/PrivateKey;

    .line 145
    .local v3, "senderPrivateKey":Ljava/security/PrivateKey;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 147
    .local v4, "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v5, v0

    .line 148
    .local v5, "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    iget-object v0, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v6, v0, :cond_9

    .line 150
    iget-object v0, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/security/PublicKey;

    .line 151
    .local v7, "recipientPublicKey":Ljava/security/PublicKey;
    iget-object v0, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    .line 156
    .local v8, "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 158
    .local v0, "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v4}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    new-instance v9, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    iget-object v10, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    iget-object v11, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v9, v10, v7, v11}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V

    move-object/from16 v12, p2

    .local v9, "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 162
    .end local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    invoke-static {v4}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isEC(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    sget-object v9, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    iget-object v10, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v10, v0}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v10

    iget-object v11, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p2

    :try_start_1
    invoke-interface {v9, v12, v10, v11}, Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;->generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B

    move-result-object v9

    .line 166
    .local v9, "ukmKeyingMaterial":[B
    new-instance v10, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-direct {v10, v9}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    move-object v9, v10

    .line 167
    .local v9, "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 168
    .end local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    move-object/from16 v12, p2

    invoke-static {v4}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isRFC2631(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "User keying material must be set for static keys."

    if-eqz v9, :cond_4

    .line 170
    :try_start_2
    iget-object v9, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    if-eqz v9, :cond_2

    .line 172
    new-instance v9, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    iget-object v10, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v9, v10}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .restart local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 176
    .end local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_SSDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 180
    const/4 v9, 0x0

    .restart local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 178
    .end local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    new-instance v9, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v9, v10}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .end local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "i":I
    .end local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .end local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .end local p1    # "keyAgreeAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p2    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p3    # "contentEncryptionKey":Lorg/bouncycastle/operator/GenericKey;
    throw v9

    .line 183
    .restart local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .restart local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v6    # "i":I
    .restart local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .restart local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .restart local p1    # "keyAgreeAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p2    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p3    # "contentEncryptionKey":Lorg/bouncycastle/operator/GenericKey;
    :cond_4
    invoke-static {v4}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 185
    iget-object v9, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    if-eqz v9, :cond_7

    .line 187
    new-instance v9, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    iget-object v10, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v9, v10}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .line 200
    .restart local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    iget-object v10, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v10, v4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    move-result-object v10

    .line 201
    .local v10, "keyAgreement":Ljavax/crypto/KeyAgreement;
    iget-object v11, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v3, v9, v11}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 202
    const/4 v11, 0x1

    invoke-virtual {v10, v7, v11}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 204
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 207
    .local v11, "keyEncryptionKey":Ljavax/crypto/SecretKey;
    iget-object v13, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v13, v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 210
    .local v13, "keyEncryptionCipher":Ljavax/crypto/Cipher;
    sget-object v14, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_None_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v14

    const/4 v15, 0x3

    if-nez v14, :cond_6

    sget-object v14, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 211
    invoke-virtual {v0, v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    .line 225
    :cond_5
    iget-object v14, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13, v15, v11, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 227
    iget-object v14, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v14, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v14

    .line 229
    .local v14, "encryptedKeyBytes":[B
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v15, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v16, v0

    .end local v14    # "encryptedKeyBytes":[B
    .local v15, "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    goto :goto_3

    .line 213
    .end local v15    # "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_6
    :goto_2
    new-instance v14, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    sget-object v15, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_A_ParamSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v0

    .end local v0    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v16, "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v0, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v14, v15, v0}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v0, 0x3

    invoke-virtual {v13, v0, v11, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 215
    iget-object v0, v1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    .line 217
    .local v0, "encKeyBytes":[B
    new-instance v14, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    array-length v15, v0

    add-int/lit8 v15, v15, -0x4

    .line 218
    const/4 v1, 0x0

    invoke-static {v0, v1, v15}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x4

    array-length v2, v0

    .line 219
    invoke-static {v0, v15, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v14, v1, v2}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;-><init>([B[B)V

    .line 221
    .local v14, "encKey":Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    const-string v2, "DER"

    invoke-virtual {v14, v2}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v15, v1

    .line 222
    .end local v0    # "encKeyBytes":[B
    .end local v14    # "encKey":Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    .restart local v15    # "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 232
    :goto_3
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 241
    .end local v9    # "agreementParamSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v10    # "keyAgreement":Ljavax/crypto/KeyAgreement;
    .end local v11    # "keyEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v13    # "keyEncryptionCipher":Ljavax/crypto/Cipher;
    .end local v15    # "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v16    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    nop

    .line 148
    .end local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .end local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 191
    .local v0, "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .restart local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v16    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v0, v10}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .end local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "i":I
    .end local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .end local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .end local p1    # "keyAgreeAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p2    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p3    # "contentEncryptionKey":Lorg/bouncycastle/operator/GenericKey;
    throw v0

    .line 196
    .end local v16    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v0    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .restart local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v6    # "i":I
    .restart local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .restart local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .restart local p1    # "keyAgreeAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p2    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p3    # "contentEncryptionKey":Lorg/bouncycastle/operator/GenericKey;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v16    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown key agreement algorithm: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .end local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "i":I
    .end local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .end local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .end local p1    # "keyAgreeAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p2    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p3    # "contentEncryptionKey":Lorg/bouncycastle/operator/GenericKey;
    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    .end local v16    # "keyEncAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .restart local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v6    # "i":I
    .restart local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .restart local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .restart local p1    # "keyAgreeAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p2    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p3    # "contentEncryptionKey":Lorg/bouncycastle/operator/GenericKey;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 234
    :catch_1
    move-exception v0

    goto :goto_5

    .line 238
    :catch_2
    move-exception v0

    move-object/from16 v12, p2

    .line 240
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to encode wrapped key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    move-object/from16 v12, p2

    .line 236
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_5
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot perform agreement step: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v7    # "recipientPublicKey":Ljava/security/PublicKey;
    .end local v8    # "karId":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    :cond_9
    move-object/from16 v12, p2

    .line 244
    .end local v6    # "i":I
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    .line 138
    .end local v3    # "senderPrivateKey":Ljava/security/PrivateKey;
    .end local v4    # "keyAgreementOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "recipientEncryptedKeys":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_a
    move-object/from16 v12, p2

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "No recipients associated with generator - use addRecipient()"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getUserKeyingMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
    .locals 6
    .param p1, "keyAgreeAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyAgreeAlg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 252
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->createOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    .line 258
    .local v0, "originatorPublicKey":Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getEncoded()[B

    move-result-object v1

    return-object v1

    .line 264
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 267
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to encode user keying material: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 273
    .end local v0    # "originatorPublicKey":Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 90
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 83
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
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

    .line 95
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 97
    return-object p0
.end method

.method public setUserKeyingMaterial([B)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 1
    .param p1, "userKeyingMaterial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userKeyingMaterial"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 76
    return-object p0
.end method

.class public abstract Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
.super Ljava/lang/Object;
.source "JceKeyAgreeRecipient.java"

# interfaces
.implements Lorg/bouncycastle/cms/KeyAgreeRecipient;


# static fields
.field private static ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

.field private static old_ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

.field private static final possibleOldMessages:Ljava/util/Set;

.field private static simple_ecc_cmsGenerator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# instance fields
.field protected contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field protected helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private privKeyAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private recipientKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->possibleOldMessages:Ljava/util/Set;

    .line 52
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->possibleOldMessages:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->possibleOldMessages:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient$1;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->old_ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    .line 334
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient$2;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient$2;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->simple_ecc_cmsGenerator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    .line 342
    new-instance v0, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "recipientKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 59
    new-instance v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->privKeyAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->recipientKey:Ljava/security/PrivateKey;

    .line 65
    return-void
.end method

.method private calculateAgreedWrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;)Ljavax/crypto/SecretKey;
    .locals 14
    .param p1, "keyEncAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "wrapAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "senderPublicKey"    # Ljava/security/PublicKey;
    .param p4, "userKeyingMaterial"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p5, "receiverPrivateKey"    # Ljava/security/PrivateKey;
    .param p6, "kmGen"    # Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;
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
            "keyEncAlg",
            "wrapAlg",
            "senderPublicKey",
            "userKeyingMaterial",
            "receiverPrivateKey",
            "kmGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-static/range {p5 .. p5}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 143
    .end local p5    # "receiverPrivateKey":Ljava/security/PrivateKey;
    .local v3, "receiverPrivateKey":Ljava/security/PrivateKey;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 145
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    move-result-object v4

    .line 147
    .local v4, "ukm":Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    new-instance v7, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 148
    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    .line 149
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getEphemeralPublicKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    .line 151
    .local v7, "pubInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 152
    .local v8, "pubSpec":Ljava/security/spec/X509EncodedKeySpec;
    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyFactory(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyFactory;

    move-result-object v9

    .line 153
    .local v9, "fact":Ljava/security/KeyFactory;
    invoke-virtual {v9, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10

    .line 155
    .local v10, "ephemeralKey":Ljava/security/PublicKey;
    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    move-result-object v11

    .line 157
    .local v11, "agreement":Ljavax/crypto/KeyAgreement;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getAddedukm()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getAddedukm()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 158
    .local v6, "ukmKeyingMaterial":[B
    :cond_0
    sget-object v12, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->old_ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    if-ne v2, v12, :cond_1

    .line 160
    sget-object v12, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->old_ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    iget-object v13, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v13, v0}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v13

    invoke-interface {v12, v0, v13, v6}, Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;->generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B

    move-result-object v6

    .line 163
    :cond_1
    new-instance v12, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    invoke-direct {v12, v3, v10, v6}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    invoke-virtual {v11, v3, v12}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 164
    invoke-virtual {v11, v1, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 166
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    return-object v5

    .line 170
    .end local v4    # "ukm":Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    .end local v6    # "ukmKeyingMaterial":[B
    .end local v7    # "pubInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v8    # "pubSpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v9    # "fact":Ljava/security/KeyFactory;
    .end local v10    # "ephemeralKey":Ljava/security/PublicKey;
    .end local v11    # "agreement":Ljavax/crypto/KeyAgreement;
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    move-result-object v4

    .line 172
    .local v4, "agreement":Ljavax/crypto/KeyAgreement;
    const/4 v7, 0x0

    .line 174
    .local v7, "userKeyingMaterialSpec":Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isEC(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    if-eqz p4, :cond_3

    .line 179
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v6, v0}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-interface {v2, v0, v6, v8}, Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;->generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B

    move-result-object v6

    .restart local v6    # "ukmKeyingMaterial":[B
    goto :goto_0

    .line 183
    .end local v6    # "ukmKeyingMaterial":[B
    :cond_3
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v8, v0}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v8

    invoke-interface {v2, v0, v8, v6}, Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;->generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B

    move-result-object v6

    .line 185
    .restart local v6    # "ukmKeyingMaterial":[B
    :goto_0
    new-instance v8, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-direct {v8, v6}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    move-object v7, v8

    .line 186
    .end local v6    # "ukmKeyingMaterial":[B
    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isRFC2631(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    if-eqz p4, :cond_6

    .line 191
    new-instance v6, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    move-object v7, v6

    goto :goto_1

    .line 194
    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 196
    if-eqz p4, :cond_6

    .line 198
    new-instance v6, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    move-object v7, v6

    .line 206
    :cond_6
    :goto_1
    invoke-virtual {v4, v3, v7}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 208
    invoke-virtual {v4, v1, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 210
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    return-object v5

    .line 203
    :cond_7
    new-instance v5, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown key agreement algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Ljava/security/Key;
    .locals 13
    .param p1, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "contentEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "senderKey"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p4, "userKeyingMaterial"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p5, "encryptedContentEncryptionKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "contentEncryptionAlgorithm",
            "senderKey",
            "userKeyingMaterial",
            "encryptedContentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 227
    move-object/from16 v1, p5

    .line 228
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    move-object v4, v0

    .line 230
    .local v4, "wrapAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    move-object v9, v0

    .line 231
    .local v9, "pubSpec":Ljava/security/spec/X509EncodedKeySpec;
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyFactory(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyFactory;

    move-result-object v0

    move-object v10, v0

    .line 232
    .local v10, "fact":Ljava/security/KeyFactory;
    invoke-virtual {v10, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    .local v5, "senderPublicKey":Ljava/security/PublicKey;
    :try_start_1
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->recipientKey:Ljava/security/PrivateKey;

    sget-object v8, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->calculateAgreedWrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 239
    .local v0, "agreedWrapKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_None_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {p0, v3, v0, v6, v1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->unwrapSessionKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/Key;

    move-result-object v3

    return-object v3

    .line 242
    :cond_1
    :goto_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    move-result-object v3

    .line 243
    .local v3, "encKey":Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;

    move-result-object v6

    .line 245
    .local v6, "wrapParams":Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 247
    .local v7, "keyCipher":Ljavax/crypto/Cipher;
    new-instance v8, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v11, 0x4

    invoke-virtual {v7, v11, v0, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 249
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getEncryptedKey()[B

    move-result-object v8

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getMacKey()[B

    move-result-object v11

    invoke-static {v8, v11}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v8

    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v7, v8, v11, v12}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v8
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v8

    .line 254
    .end local v0    # "agreedWrapKey":Ljavax/crypto/SecretKey;
    .end local v3    # "encKey":Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    .end local v6    # "wrapParams":Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;
    .end local v7    # "keyCipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 257
    .local v11, "e":Ljava/security/InvalidKeyException;
    :try_start_2
    sget-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->possibleOldMessages:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->recipientKey:Ljava/security/PrivateKey;

    sget-object v8, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->old_ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->calculateAgreedWrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 262
    .restart local v0    # "agreedWrapKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {p0, v3, v0, v6, v1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->unwrapSessionKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/Key;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 265
    .end local v0    # "agreedWrapKey":Ljavax/crypto/SecretKey;
    :cond_2
    if-eqz p4, :cond_3

    .line 269
    :try_start_3
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->recipientKey:Ljava/security/PrivateKey;

    sget-object v8, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->simple_ecc_cmsGenerator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->calculateAgreedWrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 272
    .restart local v0    # "agreedWrapKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {p0, v3, v0, v6, v1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->unwrapSessionKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/Key;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v3

    .line 274
    .end local v0    # "agreedWrapKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/security/InvalidKeyException;
    nop

    .end local p1    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p2    # "contentEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p3    # "senderKey":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local p4    # "userKeyingMaterial":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local p5    # "encryptedContentEncryptionKey":[B
    :try_start_4
    throw v11

    .line 279
    .end local v0    # "ex":Ljava/security/InvalidKeyException;
    .restart local p1    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p2    # "contentEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p3    # "senderKey":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .restart local p4    # "userKeyingMaterial":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local p5    # "encryptedContentEncryptionKey":[B
    :cond_3
    nop

    .end local p1    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p2    # "contentEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p3    # "senderKey":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local p4    # "userKeyingMaterial":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local p5    # "encryptedContentEncryptionKey":[B
    throw v11
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 298
    .end local v4    # "wrapAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v5    # "senderPublicKey":Ljava/security/PublicKey;
    .end local v9    # "pubSpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v10    # "fact":Ljava/security/KeyFactory;
    .end local v11    # "e":Ljava/security/InvalidKeyException;
    .restart local p1    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p2    # "contentEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p3    # "senderKey":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .restart local p4    # "userKeyingMaterial":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local p5    # "encryptedContentEncryptionKey":[B
    :catch_2
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, "originator key invalid."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 296
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, "required padding not supported."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 290
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v0

    .line 292
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, "originator key spec invalid."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 286
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v0

    .line 288
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, "key invalid in message."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 282
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_6
    move-exception v0

    .line 284
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, "can\'t find algorithm."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->privKeyAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->recipientKey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->privKeyAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->privKeyAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setContentProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
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

    .line 118
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createContentHelper(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 120
    return-object p0
.end method

.method public setContentProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
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

    .line 104
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createContentHelper(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 106
    return-object p0
.end method

.method public setPrivateKeyAlgorithmIdentifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
    .locals 0
    .param p1, "privKeyAlgID"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privKeyAlgID"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->privKeyAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 134
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
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

    .line 89
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 92
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
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

    .line 75
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 78
    return-object p0
.end method

.method protected unwrapSessionKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Ljava/security/Key;
    .locals 3
    .param p1, "wrapAlg"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "agreedKey"    # Ljavax/crypto/SecretKey;
    .param p3, "contentEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p4, "encryptedContentEncryptionKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrapAlg",
            "agreedKey",
            "contentEncryptionAlgorithm",
            "encryptedContentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 218
    .local v0, "keyCipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 219
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p4, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

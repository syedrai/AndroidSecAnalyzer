.class public Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256GCM;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStoreAES256;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore3DES;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStoreAES256GCM;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStoreAES256;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0xc800

.field static final NULL:I = 0x0

.field static final PKCS12_MAX_IT_COUNT_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs12.max_it_count"

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private itCount:I

.field private keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected random:Ljava/security/SecureRandom;

.field private saltLength:I


# direct methods
.method static bridge synthetic -$$Nest$mcreateSubjectKeyId(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 5
    .param p1, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "keyAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "certAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "helper",
            "keyAlgorithm",
            "certAlgorithm"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 130
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 137
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 138
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 139
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 140
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 161
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 168
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 169
    const v0, 0x19000

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 170
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 237
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 238
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 242
    :try_start_0
    const-string v0, "X.509"

    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    nop

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t create cert factory - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .locals 3
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "salt"    # [B
    .param p3, "itCount"    # I
    .param p4, "password"    # [C
    .param p5, "wrongPkcs12Zero"    # Z
    .param p6, "data"    # [B
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
            "oid",
            "salt",
            "itCount",
            "password",
            "wrongPkcs12Zero",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1953
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1955
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1956
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v2, p4, p5}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1957
    invoke-virtual {v1, p6}, Ljavax/crypto/Mac;->update([B)V

    .line 1959
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    return-object v2
.end method

.method private createCipher(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .locals 12
    .param p1, "mode"    # I
    .param p2, "password"    # [C
    .param p3, "algId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "password",
            "algId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 792
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v1

    .line 793
    .local v1, "alg":Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v2

    .line 794
    .local v2, "func":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 796
    .local v3, "encScheme":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 799
    .local v4, "keyFact":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v6

    sget-object v7, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v7, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v7

    invoke-direct {v0, p2, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    move-object v6, p2

    move-object p2, v0

    .local v0, "key":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 805
    .end local v0    # "key":Ljavax/crypto/SecretKey;
    :cond_0
    new-instance v5, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v8

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v9

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    move-object v6, p2

    .end local p2    # "password":[C
    .local v6, "password":[C
    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v4, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    move-object p2, v0

    .line 808
    .local p2, "key":Ljavax/crypto/SecretKey;
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 809
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 810
    .local v7, "encParams":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v0, v7, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 812
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 816
    :cond_1
    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 818
    .local v8, "params":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_2

    .line 821
    invoke-static {v7}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    move-result-object v0

    .line 823
    .local v0, "gParams":Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;
    new-instance v9, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getIV()[B

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    invoke-virtual {v5, p1, p2, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 824
    .end local v0    # "gParams":Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;
    goto :goto_1

    .line 827
    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v9, "BC"

    invoke-static {v0, v9}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v9

    .line 831
    .local v9, "algParams":Ljava/security/AlgorithmParameters;
    :try_start_0
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    nop

    .line 838
    invoke-virtual {v5, p1, p2, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 841
    .end local v8    # "params":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "algParams":Ljava/security/AlgorithmParameters;
    :goto_1
    return-object v5

    .line 833
    .restart local v8    # "params":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "algParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .locals 10
    .param p1, "certId"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certId",
            "cert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1821
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 1823
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1824
    .local v0, "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1826
    .local v1, "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .line 1827
    .local v2, "cAttrSet":Z
    instance-of v3, p2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_3

    .line 1829
    move-object v3, p2

    check-cast v3, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1833
    .local v3, "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v3, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 1834
    .local v4, "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1836
    :cond_0
    if-eqz p1, :cond_1

    .line 1838
    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, p1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1842
    :cond_1
    invoke-interface {v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 1844
    .local v5, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1846
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1852
    .local v6, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1854
    goto :goto_0

    .line 1857
    :cond_2
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1859
    .local v7, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1860
    new-instance v8, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v3, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1861
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1863
    const/4 v2, 0x1

    .line 1864
    .end local v6    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_0

    .line 1867
    .end local v3    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v4    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_3
    if-nez v2, :cond_4

    .line 1869
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1871
    .local v3, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1872
    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1874
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1878
    .end local v3    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    instance-of v3, p2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_7

    .line 1880
    move-object v3, p2

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    .line 1881
    .local v3, "tbsCert":Lorg/bouncycastle/asn1/x509/TBSCertificate;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    .line 1882
    .local v4, "exts":Lorg/bouncycastle/asn1/x509/Extensions;
    if-eqz v4, :cond_6

    .line 1884
    sget-object v5, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 1885
    .local v5, "extUsage":Lorg/bouncycastle/asn1/x509/Extension;
    if-eqz v5, :cond_5

    .line 1887
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1890
    .local v6, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v7, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_oracle_pkcs12_trusted_key_usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1891
    new-instance v7, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->getUsages()[Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1892
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1893
    .end local v6    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_1

    .line 1896
    :cond_5
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1898
    .restart local v6    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v7, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_oracle_pkcs12_trusted_key_usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1899
    new-instance v7, Lorg/bouncycastle/asn1/DERSet;

    sget-object v8, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1900
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1902
    .end local v5    # "extUsage":Lorg/bouncycastle/asn1/x509/Extension;
    .end local v6    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_1
    goto :goto_2

    .line 1905
    :cond_6
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1907
    .local v5, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v6, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_oracle_pkcs12_trusted_key_usage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1908
    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    sget-object v7, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1909
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1913
    .end local v3    # "tbsCert":Lorg/bouncycastle/asn1/x509/TBSCertificate;
    .end local v4    # "exts":Lorg/bouncycastle/asn1/x509/Extensions;
    .end local v5    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_7
    :goto_2
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v3
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 255
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 257
    .local v0, "info":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 259
    .end local v0    # "info":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error creating key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 28
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "password",
            "useDEREncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v4, p2

    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->size()I

    move-result v0

    const-string v9, "BER"

    const-string v2, "Error encoding certificate: "

    const-string v10, "DER"

    if-nez v0, :cond_2

    .line 1425
    if-nez v4, :cond_3

    .line 1427
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1429
    .local v3, "cs":Ljava/util/Enumeration;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v5, v0

    .line 1431
    .local v5, "certSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1436
    .local v0, "certId":Ljava/lang/String;
    iget-object v6, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v6, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 1438
    .local v6, "cert":Ljava/security/cert/Certificate;
    invoke-direct {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v7

    .line 1440
    .local v7, "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    .end local v0    # "certId":Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1448
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1450
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v6, v7}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1452
    .local v2, "bagInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/Pfx;

    new-instance v7, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v9, v11}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 1454
    .local v6, "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v6, v8, v10}, Lorg/bouncycastle/asn1/pkcs/Pfx;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1455
    .end local v2    # "bagInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v6    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    goto :goto_1

    .line 1458
    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/BEROctetString;

    new-instance v10, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v10, v5}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/BERSequence;->getEncoded()[B

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v2, v6, v7}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1460
    .restart local v2    # "bagInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/Pfx;

    new-instance v7, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v11, Lorg/bouncycastle/asn1/BEROctetString;

    new-instance v12, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v12, v2}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/BERSequence;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v7, v10, v11}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 1462
    .restart local v6    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v6, v8, v9}, Lorg/bouncycastle/asn1/pkcs/Pfx;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1465
    .end local v2    # "bagInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v6    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    :goto_1
    return-void

    .line 1470
    .end local v3    # "cs":Ljava/util/Enumeration;
    .end local v5    # "certSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    if-eqz v4, :cond_1f

    .line 1479
    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v11, v0

    .line 1481
    .local v11, "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v12

    .line 1483
    .local v12, "ks":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/16 v3, 0x14

    const v5, 0xc800

    if-eqz v0, :cond_b

    .line 1485
    new-array v0, v3, [B

    .line 1487
    .local v0, "kSalt":[B
    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1489
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1490
    .local v3, "name":Ljava/lang/String;
    iget-object v6, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v6, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    .line 1493
    .local v6, "privKey":Ljava/security/PrivateKey;
    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->isPBKDF2(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1496
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget-object v13, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v13}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getKeyLength(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v13

    new-instance v14, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v15, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v9

    sget-object v9, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v14, v15, v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v7, v0, v5, v13, v14}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 1497
    .local v7, "kParams":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    new-instance v5, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    iget-object v9, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v13, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v13}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getAlgParams(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    invoke-direct {v5, v9, v13}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1498
    .local v5, "encScheme":Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;
    new-instance v9, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v13, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v14, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v15, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-object/from16 v17, v12

    .end local v12    # "ks":Ljava/util/Enumeration;
    .local v17, "ks":Ljava/util/Enumeration;
    sget-object v12, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v15, v12, v7}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v14, v15, v5}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    invoke-direct {v9, v13, v14}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1500
    .local v9, "kAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v1, v5, v6, v7, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;[C)[B

    move-result-object v5

    .line 1501
    .end local v7    # "kParams":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .local v5, "kBytes":[B
    goto :goto_3

    .line 1504
    .end local v5    # "kBytes":[B
    .end local v9    # "kAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v17    # "ks":Ljava/util/Enumeration;
    .restart local v12    # "ks":Ljava/util/Enumeration;
    :cond_4
    move-object/from16 v16, v9

    move-object/from16 v17, v12

    .end local v12    # "ks":Ljava/util/Enumeration;
    .restart local v17    # "ks":Ljava/util/Enumeration;
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v7, v0, v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1505
    .local v7, "kParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    iget-object v5, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6, v7, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v5

    .line 1506
    .restart local v5    # "kBytes":[B
    new-instance v9, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v12, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1508
    .end local v7    # "kParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v9    # "kAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_3
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v7, v9, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1509
    .local v7, "kInfo":Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/4 v12, 0x0

    .line 1510
    .local v12, "attrSet":Z
    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1512
    .local v13, "kName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v14, v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v14, :cond_9

    .line 1514
    move-object v14, v6

    check-cast v14, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1518
    .local v14, "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v15, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 1519
    .local v15, "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    if-eqz v15, :cond_5

    move-object/from16 v18, v0

    .end local v0    # "kSalt":[B
    .local v18, "kSalt":[B
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .end local v18    # "kSalt":[B
    .restart local v0    # "kSalt":[B
    :cond_5
    move-object/from16 v18, v0

    .line 1521
    .end local v0    # "kSalt":[B
    .restart local v18    # "kSalt":[B
    :goto_4
    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v0, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1527
    :cond_6
    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1529
    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1531
    .local v0, "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v0

    .end local v0    # "ct":Ljava/security/cert/Certificate;
    .local v19, "ct":Ljava/security/cert/Certificate;
    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-interface {v14, v4, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1534
    .end local v19    # "ct":Ljava/security/cert/Certificate;
    :cond_7
    invoke-interface {v14}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1536
    .local v0, "e":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1538
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1539
    .local v4, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v20, v19

    .line 1541
    .local v20, "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "e":Ljava/util/Enumeration;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1542
    move-object/from16 v20, v5

    .end local v5    # "kBytes":[B
    .local v20, "kBytes":[B
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v21, v6

    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .local v21, "privKey":Ljava/security/PrivateKey;
    invoke-interface {v14, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1544
    const/4 v12, 0x1

    .line 1546
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1547
    .end local v0    # "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v0, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_5

    .line 1536
    .end local v19    # "e":Ljava/util/Enumeration;
    .end local v20    # "kBytes":[B
    .end local v21    # "privKey":Ljava/security/PrivateKey;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v5    # "kBytes":[B
    .restart local v6    # "privKey":Ljava/security/PrivateKey;
    :cond_8
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v5    # "kBytes":[B
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .restart local v19    # "e":Ljava/util/Enumeration;
    .restart local v20    # "kBytes":[B
    .restart local v21    # "privKey":Ljava/security/PrivateKey;
    goto :goto_6

    .line 1512
    .end local v14    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v15    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .end local v18    # "kSalt":[B
    .end local v19    # "e":Ljava/util/Enumeration;
    .end local v20    # "kBytes":[B
    .end local v21    # "privKey":Ljava/security/PrivateKey;
    .local v0, "kSalt":[B
    .restart local v5    # "kBytes":[B
    .restart local v6    # "privKey":Ljava/security/PrivateKey;
    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 1550
    .end local v0    # "kSalt":[B
    .end local v5    # "kBytes":[B
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .restart local v18    # "kSalt":[B
    .restart local v20    # "kBytes":[B
    .restart local v21    # "privKey":Ljava/security/PrivateKey;
    :goto_6
    if-nez v12, :cond_a

    .line 1555
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1556
    .local v0, "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 1558
    .local v4, "ct":Ljava/security/cert/Certificate;
    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1559
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1561
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1563
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1565
    .end local v0    # "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1566
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    new-instance v6, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1568
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1571
    .end local v4    # "ct":Ljava/security/cert/Certificate;
    .end local v5    # "kSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v13}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1572
    .local v0, "kBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v11, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1573
    .end local v0    # "kBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "kInfo":Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v9    # "kAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v12    # "attrSet":Z
    .end local v13    # "kName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v18    # "kSalt":[B
    .end local v20    # "kBytes":[B
    .end local v21    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v4, p2

    move-object/from16 v9, v16

    move-object/from16 v12, v17

    goto/16 :goto_2

    .line 1575
    .end local v17    # "ks":Ljava/util/Enumeration;
    .local v12, "ks":Ljava/util/Enumeration;
    :cond_b
    move-object/from16 v16, v9

    move-object/from16 v17, v12

    .end local v12    # "ks":Ljava/util/Enumeration;
    .restart local v17    # "ks":Ljava/util/Enumeration;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v9

    .line 1576
    .local v9, "keySEncoded":[B
    new-instance v0, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v0, v9}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v12, v0

    .line 1581
    .local v12, "keyString":Lorg/bouncycastle/asn1/BEROctetString;
    new-array v13, v3, [B

    .line 1583
    .local v13, "cSalt":[B
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1585
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v14, v0

    .line 1587
    .local v14, "certSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->isPBKDF2(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1589
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getKeyLength(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v3

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v13, v5, v3, v4}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 1590
    .local v0, "cParams":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    iget-object v15, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v0

    .end local v0    # "cParams":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .local v18, "cParams":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1591
    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getAlgParams(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {v7, v15, v0}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1592
    .end local v18    # "cParams":Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .local v3, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    goto :goto_7

    .line 1595
    .end local v3    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_c
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v0, v13, v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1596
    .local v0, "cParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1598
    .end local v0    # "cParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v3    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object v15, v0

    .line 1600
    .local v15, "doneCerts":Ljava/util/Hashtable;
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 1601
    .local v4, "cs":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1605
    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1606
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 1607
    .local v5, "cert":Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    .line 1608
    .local v6, "cAttrSet":Z
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/CertBag;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v18, v3

    .end local v3    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v18, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_2
    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v19, v4

    .end local v4    # "cs":Ljava/util/Enumeration;
    .local v19, "cs":Ljava/util/Enumeration;
    :try_start_3
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    .line 1610
    move/from16 v20, v6

    .end local v6    # "cAttrSet":Z
    .local v20, "cAttrSet":Z
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v3, v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1611
    .local v7, "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1613
    .local v3, "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v4, v5, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_11

    .line 1615
    move-object v4, v5

    check-cast v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1619
    .local v4, "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1BMPString;
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1620
    .local v6, "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    if-eqz v6, :cond_e

    move-object/from16 v21, v6

    .end local v6    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .local v21, "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v22, v7

    goto :goto_a

    .line 1670
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v20    # "cAttrSet":Z
    .end local v21    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    :catch_1
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    goto/16 :goto_d

    .line 1620
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v4    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v5    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .restart local v7    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v20    # "cAttrSet":Z
    :cond_e
    move-object/from16 v21, v6

    .line 1622
    .end local v6    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .restart local v21    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    :goto_9
    :try_start_5
    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v7

    .end local v7    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .local v22, "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v7, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1628
    :goto_a
    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v6, :cond_f

    .line 1630
    :try_start_6
    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1633
    :cond_f
    :try_start_7
    invoke-interface {v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v6

    .line 1635
    .local v6, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1637
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1638
    .local v7, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v23, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v24, v23

    .line 1640
    .local v24, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v23, v6

    move-object/from16 v6, v24

    .end local v24    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v6, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v23, "e":Ljava/util/Enumeration;
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1641
    move-object/from16 v24, v9

    .end local v9    # "keySEncoded":[B
    .local v24, "keySEncoded":[B
    :try_start_8
    new-instance v9, Lorg/bouncycastle/asn1/DERSet;
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v25, v11

    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v25, "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_9
    invoke-interface {v4, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1642
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1644
    const/16 v20, 0x1

    .line 1645
    .end local v6    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v7    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v6, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    goto :goto_b

    .line 1670
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "cAttrSet":Z
    .end local v21    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .end local v22    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_2
    move-exception v0

    move-object/from16 v25, v11

    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto/16 :goto_d

    .line 1635
    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v4    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v5    # "cert":Ljava/security/cert/Certificate;
    .local v6, "e":Ljava/util/Enumeration;
    .restart local v9    # "keySEncoded":[B
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "cAttrSet":Z
    .restart local v21    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .restart local v22    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :cond_10
    move-object/from16 v23, v6

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .end local v6    # "e":Ljava/util/Enumeration;
    .end local v9    # "keySEncoded":[B
    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v23    # "e":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move/from16 v6, v20

    goto :goto_c

    .line 1613
    .end local v4    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v21    # "nm":Lorg/bouncycastle/asn1/ASN1BMPString;
    .end local v22    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v7, "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v9    # "keySEncoded":[B
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_11
    move-object/from16 v22, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .end local v7    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v9    # "keySEncoded":[B
    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v22    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v24    # "keySEncoded":[B
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move/from16 v6, v20

    .line 1648
    .end local v20    # "cAttrSet":Z
    .local v6, "cAttrSet":Z
    :goto_c
    if-nez v6, :cond_12

    .line 1650
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1652
    .local v4, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v7, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1653
    new-instance v7, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1654
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1656
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1658
    .end local v4    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v7, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1659
    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v9, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v9, v0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1661
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1664
    .end local v7    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v7, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v7, v9, v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1666
    .local v4, "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v14, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1668
    invoke-virtual {v15, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1673
    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "cAttrSet":Z
    .end local v22    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    goto/16 :goto_8

    .line 1670
    :catch_3
    move-exception v0

    goto :goto_d

    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "keySEncoded":[B
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_4
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .end local v9    # "keySEncoded":[B
    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v24    # "keySEncoded":[B
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_d

    .end local v19    # "cs":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "cs":Ljava/util/Enumeration;
    .restart local v9    # "keySEncoded":[B
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_5
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .end local v4    # "cs":Ljava/util/Enumeration;
    .end local v9    # "keySEncoded":[B
    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v19    # "cs":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_d

    .end local v18    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v19    # "cs":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v4    # "cs":Ljava/util/Enumeration;
    .restart local v9    # "keySEncoded":[B
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_6
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .line 1672
    .end local v3    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "cs":Ljava/util/Enumeration;
    .end local v9    # "keySEncoded":[B
    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v18    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v19    # "cs":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_d
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1676
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v18    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v19    # "cs":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v4    # "cs":Ljava/util/Enumeration;
    .restart local v9    # "keySEncoded":[B
    .restart local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .end local v3    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "cs":Ljava/util/Enumeration;
    .end local v9    # "keySEncoded":[B
    .end local v11    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v18    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v19    # "cs":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    .restart local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1677
    .end local v19    # "cs":Ljava/util/Enumeration;
    .local v3, "cs":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1681
    :try_start_a
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1682
    .local v0, "certId":Ljava/lang/String;
    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 1684
    .local v4, "cert":Ljava/security/cert/Certificate;
    iget-object v5, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1686
    goto :goto_e

    .line 1689
    :cond_14
    invoke-direct {v1, v0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v5

    .line 1691
    .local v5, "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v14, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1693
    invoke-virtual {v15, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a .. :try_end_a} :catch_7

    .line 1698
    nop

    .end local v0    # "certId":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    goto :goto_e

    .line 1695
    :catch_7
    move-exception v0

    .line 1697
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1701
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_15
    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v9

    .line 1703
    .local v9, "usedSet":Ljava/util/Set;
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v11

    .line 1704
    .end local v3    # "cs":Ljava/util/Enumeration;
    .local v11, "cs":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1708
    :try_start_b
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 1709
    .local v0, "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 1711
    .local v3, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1713
    goto :goto_f

    .line 1716
    :cond_16
    invoke-virtual {v15, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 1718
    goto :goto_f

    .line 1721
    :cond_17
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    .line 1723
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1724
    .local v4, "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1726
    .local v5, "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v6, v3, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v6, :cond_1a

    .line 1728
    move-object v6, v3

    check-cast v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1729
    .local v6, "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v7

    .line 1731
    .local v7, "e":Ljava/util/Enumeration;
    :goto_10
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 1733
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v19

    .line 1739
    .local v20, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v19, v0

    .end local v0    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .local v19, "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v20

    .end local v20    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v1, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1741
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    goto :goto_10

    .line 1744
    :cond_18
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1746
    .local v0, "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1747
    move-object/from16 v20, v3

    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .local v20, "cert":Ljava/security/cert/Certificate;
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v21, v4

    .end local v4    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .local v21, "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    invoke-interface {v6, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1748
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1749
    .end local v0    # "fSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v1, p0

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_10

    .line 1731
    .end local v19    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v20    # "cert":Ljava/security/cert/Certificate;
    .end local v21    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .local v0, "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :cond_19
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v0    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v19    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v20    # "cert":Ljava/security/cert/Certificate;
    .restart local v21    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    goto :goto_11

    .line 1726
    .end local v6    # "bagAttrs":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v19    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v20    # "cert":Ljava/security/cert/Certificate;
    .end local v21    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v0    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :cond_1a
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 1753
    .end local v0    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v19    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v20    # "cert":Ljava/security/cert/Certificate;
    .restart local v21    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :goto_11
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v3, v4}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1755
    .local v0, "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_b .. :try_end_b} :catch_8

    .line 1760
    .end local v0    # "sBag":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v5    # "fName":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v19    # "certId":Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v20    # "cert":Ljava/security/cert/Certificate;
    .end local v21    # "cBag":Lorg/bouncycastle/asn1/pkcs/CertBag;
    move-object/from16 v1, p0

    goto/16 :goto_f

    .line 1757
    :catch_8
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1763
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_1b
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 1764
    .local v6, "certSeqEncoded":[B
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v3, v18

    .end local v18    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v2

    .line 1765
    move-object/from16 v18, v6

    .end local v6    # "certSeqEncoded":[B
    .local v2, "certBytes":[B
    .local v18, "certSeqEncoded":[B
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v0, v4, v3, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v19, v0

    .line 1767
    .local v19, "cInfo":Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5, v12}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x0

    aput-object v4, v0, v5

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1770
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x1

    aput-object v4, v0, v5

    move-object v4, v0

    .line 1773
    .local v4, "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V

    move-object v5, v0

    .line 1775
    .local v5, "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    if-eqz p3, :cond_1c

    move-object v0, v10

    goto :goto_12

    :cond_1c
    move-object/from16 v0, v16

    :goto_12
    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 1777
    .local v6, "pkg":[B
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v2

    .end local v2    # "certBytes":[B
    .local v20, "certBytes":[B
    new-instance v2, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v0, v7, v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object v2, v0

    .line 1782
    .local v2, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    iget v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v7, v0, [B

    .line 1784
    .local v7, "mSalt":[B
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1786
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v21

    .line 1790
    .local v21, "data":[B
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v2

    .end local v2    # "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v22, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1792
    const/4 v0, 0x0

    move-object/from16 v23, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v23

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v6

    move-object v3, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v5

    .local v0, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    goto :goto_13

    .line 1798
    .end local v0    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    :cond_1d
    :try_start_c
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    move-object/from16 v23, v4

    .end local v4    # "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v23, "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    :try_start_d
    iget v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v26, v6

    .end local v6    # "pkg":[B
    .local v26, "pkg":[B
    const/4 v6, 0x0

    move-object/from16 v27, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v3

    move-object v3, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v5

    move-object/from16 v5, p2

    .end local v5    # "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v3, "mSalt":[B
    .local v7, "data":[B
    .local v9, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v22, "usedSet":Ljava/util/Set;
    .local v27, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_e
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 1800
    .local v0, "res":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v4, v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1802
    .local v2, "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/MacData;

    iget v5, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    invoke-direct {v4, v2, v3, v5}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-object v0, v4

    .line 1807
    .end local v2    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .local v0, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    nop

    .line 1813
    :goto_13
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v2, v9, v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 1815
    .local v2, "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_1e

    goto :goto_14

    :cond_1e
    move-object/from16 v10, v16

    :goto_14
    invoke-virtual {v2, v8, v10}, Lorg/bouncycastle/asn1/pkcs/Pfx;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1816
    return-void

    .line 1804
    .end local v0    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v2    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    :catch_9
    move-exception v0

    goto :goto_15

    .end local v26    # "pkg":[B
    .end local v27    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v5    # "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v6    # "pkg":[B
    .local v7, "mSalt":[B
    .local v9, "usedSet":Ljava/util/Set;
    .local v21, "data":[B
    .local v22, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    :catch_a
    move-exception v0

    move-object/from16 v26, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v26

    move-object/from16 v27, v3

    move-object/from16 v26, v6

    move-object v3, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v5

    .end local v5    # "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v6    # "pkg":[B
    .local v3, "mSalt":[B
    .local v7, "data":[B
    .local v9, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v22, "usedSet":Ljava/util/Set;
    .restart local v26    # "pkg":[B
    .restart local v27    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    goto :goto_15

    .end local v23    # "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v26    # "pkg":[B
    .end local v27    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v4    # "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v5    # "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v6    # "pkg":[B
    .local v7, "mSalt":[B
    .local v9, "usedSet":Ljava/util/Set;
    .local v21, "data":[B
    .local v22, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    :catch_b
    move-exception v0

    move-object/from16 v23, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v23

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v6

    move-object v3, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v5

    .line 1806
    .end local v4    # "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v5    # "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v6    # "pkg":[B
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "mSalt":[B
    .local v7, "data":[B
    .local v9, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v22, "usedSet":Ljava/util/Set;
    .restart local v23    # "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v26    # "pkg":[B
    .restart local v27    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_15
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error constructing MAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1472
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "mSalt":[B
    .end local v7    # "data":[B
    .end local v9    # "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v11    # "cs":Ljava/util/Enumeration;
    .end local v12    # "keyString":Lorg/bouncycastle/asn1/BEROctetString;
    .end local v13    # "cSalt":[B
    .end local v14    # "certSeq":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "doneCerts":Ljava/util/Hashtable;
    .end local v17    # "ks":Ljava/util/Enumeration;
    .end local v18    # "certSeqEncoded":[B
    .end local v19    # "cInfo":Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v20    # "certBytes":[B
    .end local v21    # "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v22    # "usedSet":Ljava/util/Set;
    .end local v23    # "info":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v24    # "keySEncoded":[B
    .end local v25    # "keyS":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v26    # "pkg":[B
    .end local v27    # "cAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "no password supplied for PKCS#12 KeyStore"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAlgParams(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 1346
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_3

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1347
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1355
    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1356
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1365
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown encryption OID in getAlgParams()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_2
    :goto_0
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1360
    .local v0, "nonce":[B
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1362
    new-instance v2, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    invoke-virtual {v2}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 1349
    .end local v0    # "nonce":[B
    :cond_3
    :goto_1
    new-array v0, v1, [B

    .line 1351
    .local v0, "iv":[B
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1353
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v1
.end method

.method private static getDigest(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5
    .param p0, "spki"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spki"
        }
    .end annotation

    .line 267
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 268
    .local v0, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 270
    .local v1, "resBuf":[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    .line 271
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 272
    invoke-interface {v0, v1, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 273
    return-object v1
.end method

.method private static getKeyLength(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .locals 1
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 222
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    const/16 v0, 0x10

    return v0

    .line 224
    :cond_1
    :goto_0
    const/16 v0, 0x20

    return v0
.end method

.method private getUsedCertificateSet()Ljava/util/Set;
    .locals 6

    .line 1918
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1920
    .local v0, "usedSet":Ljava/util/Set;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1922
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1924
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1926
    .local v3, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-eq v4, v5, :cond_0

    .line 1928
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1926
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1930
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "i":I
    :cond_0
    goto :goto_0

    .line 1932
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "en":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1934
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1936
    .restart local v2    # "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1938
    .local v3, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1939
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_2

    .line 1941
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_2
    return-object v0
.end method

.method private static isPBKDF2(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 214
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 214
    :goto_1
    return v0
.end method

.method private processKeyBag(Lorg/bouncycastle/asn1/pkcs/SafeBag;)V
    .locals 13
    .param p1, "b"    # Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 1262
    .local v0, "kInfo":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 1267
    .local v1, "privKey":Ljava/security/PrivateKey;
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1268
    .local v2, "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v3, 0x0

    .line 1269
    .local v3, "alias":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1271
    .local v4, "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1272
    .local v5, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1274
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1275
    .local v6, "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 1276
    .local v8, "aOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    .line 1277
    .local v9, "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v10, 0x0

    .line 1279
    .local v10, "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 1281
    invoke-virtual {v9, v7}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 1283
    .end local v10    # "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v7, "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v2, v8}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    .line 1284
    .local v10, "existing":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v10, :cond_1

    .line 1287
    invoke-interface {v10}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 1289
    :cond_0
    new-instance v11, Ljava/io/IOException;

    const-string v12, "attempt to add existing attribute with different value"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1295
    :cond_1
    invoke-interface {v2, v8, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1298
    :goto_1
    sget-object v11, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1300
    move-object v11, v7

    check-cast v11, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1301
    iget-object v11, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v11, v3, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1303
    :cond_2
    sget-object v11, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1305
    move-object v4, v7

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1308
    .end local v6    # "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v8    # "aOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v9    # "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v10    # "existing":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    :goto_2
    goto :goto_0

    .line 1310
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1312
    .local v6, "name":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 1314
    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v6, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1318
    :cond_5
    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v3, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1320
    :goto_3
    return-void
.end method

.method private processShroudedKeyBag(Lorg/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z
    .locals 17
    .param p1, "b"    # Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .param p2, "password"    # [C
    .param p3, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "password",
            "wrongPKCS12Zero"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v1

    .line 1183
    .local v1, "eIn":Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v2

    .line 1188
    .local v2, "privKey":Ljava/security/PrivateKey;
    const/4 v3, 0x0

    .line 1189
    .local v3, "alias":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1191
    .local v6, "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    .line 1193
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 1194
    .local v7, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1196
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1197
    .local v10, "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1198
    .local v11, "aOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v10, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Set;

    .line 1199
    .local v12, "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v13, 0x0

    .line 1201
    .local v13, "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 1203
    invoke-virtual {v12, v9}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 1205
    instance-of v14, v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v14, :cond_2

    .line 1207
    move-object v14, v2

    check-cast v14, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1208
    .local v14, "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v14, v11}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    .line 1209
    .local v15, "existing":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v15, :cond_1

    .line 1212
    const/16 v16, 0x1

    invoke-interface {v15}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-virtual {v8, v13}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 1214
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string v9, "attempt to add existing attribute with different value"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1220
    :cond_1
    const/16 v16, 0x1

    invoke-interface {v14, v11, v13}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 1205
    .end local v14    # "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v15    # "existing":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    .line 1201
    :cond_3
    const/16 v16, 0x1

    .line 1225
    :goto_1
    sget-object v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1227
    move-object v8, v13

    check-cast v8, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1228
    iget-object v8, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v8, v3, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1230
    :cond_4
    sget-object v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1232
    move-object v6, v13

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1234
    .end local v10    # "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "aOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v12    # "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v13    # "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_5
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 1194
    :cond_6
    const/16 v16, 0x1

    goto :goto_3

    .line 1191
    .end local v7    # "e":Ljava/util/Enumeration;
    :cond_7
    const/16 v16, 0x1

    .line 1237
    :goto_3
    if-eqz v6, :cond_9

    .line 1239
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 1241
    .local v7, "name":Ljava/lang/String;
    if-nez v3, :cond_8

    .line 1243
    iget-object v8, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v8, v7, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1247
    :cond_8
    iget-object v8, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v8, v3, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1249
    :goto_4
    return v9

    .line 1253
    .end local v7    # "name":Ljava/lang/String;
    :cond_9
    iget-object v7, v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string/jumbo v8, "unmarked"

    invoke-virtual {v7, v8, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1254
    return v16
.end method

.method private validateIterationCount(Ljava/math/BigInteger;)I
    .locals 6
    .param p1, "i"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1324
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    .line 1326
    .local v0, "count":I
    if-ltz v0, :cond_2

    .line 1331
    const-string v1, "org.bouncycastle.pkcs12.max_it_count"

    invoke-static {v1}, Lorg/bouncycastle/util/Properties;->asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1332
    .local v1, "maxValue":Ljava/math/BigInteger;
    if-eqz v1, :cond_1

    .line 1334
    invoke-static {v1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1337
    invoke-static {v1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iteration count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " greater than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1341
    :cond_1
    :goto_0
    return v0

    .line 1328
    .end local v1    # "maxValue":Ljava/math/BigInteger;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "negative iteration count found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 8
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "algId",
            "password",
            "wrongPKCS12Zero",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 748
    .local v0, "algorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 750
    .local v1, "mode":I
    :goto_0
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    const-string v3, "exception decrypting data - "

    if-eqz v2, :cond_1

    .line 752
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v2

    .line 755
    .local v2, "pbeParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 756
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v5

    .line 757
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 758
    .local v4, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v5, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v5, p3, p4}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 760
    .local v5, "key":Lorg/bouncycastle/jcajce/PKCS12Key;
    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 762
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 763
    invoke-virtual {v6, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 765
    .end local v4    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lorg/bouncycastle/jcajce/PKCS12Key;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v4

    .line 767
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 770
    .end local v2    # "pbeParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    :try_start_1
    invoke-direct {p0, v1, p3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 776
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 778
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_1
    move-exception v2

    .line 780
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 785
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown PBE algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 4

    .line 290
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 292
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 293
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 298
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 299
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 304
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v2    # "a":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 327
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    .line 333
    .local v1, "key":Ljava/security/Key;
    if-eqz v1, :cond_1

    .line 335
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 336
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 338
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 339
    .local v3, "keyCert":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_1

    .line 341
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "keyCert":Ljava/security/cert/Certificate;
    :cond_1
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_2

    .line 358
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 363
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    .line 365
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 368
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_0

    .line 372
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    .line 376
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 355
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 383
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 385
    .local v1, "k":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 388
    .local v2, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    return-object v3

    .line 394
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 396
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 397
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 399
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 402
    .restart local v2    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .restart local v3    # "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    return-object v3

    .line 408
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 410
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 416
    if-eqz p1, :cond_9

    .line 421
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 423
    return-object v1

    .line 426
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 428
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_8

    .line 430
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 432
    .local v1, "cs":Ljava/util/Vector;
    :goto_0
    if-eqz v0, :cond_6

    .line 434
    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 435
    .local v2, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 437
    .local v3, "nextC":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 438
    .local v4, "akiBytes":[B
    if-eqz v4, :cond_1

    .line 440
    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    .line 441
    .local v5, "akiValue":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v6

    .line 443
    .local v6, "aki":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    .line 444
    .local v7, "keyID":[B
    if-eqz v7, :cond_1

    .line 446
    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v9, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-direct {v9, p0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Ljava/security/cert/Certificate;

    .line 450
    .end local v5    # "akiValue":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "aki":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v7    # "keyID":[B
    :cond_1
    if-nez v3, :cond_3

    .line 455
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    .line 456
    .local v5, "i":Ljava/security/Principal;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    .line 458
    .local v6, "s":Ljava/security/Principal;
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 460
    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 462
    .local v7, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 464
    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 465
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    .line 466
    .local v9, "sub":Ljava/security/Principal;
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 470
    :try_start_0
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    move-object v3, v8

    .line 472
    goto :goto_2

    .line 474
    :catch_0
    move-exception v10

    .line 479
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v9    # "sub":Ljava/security/Principal;
    :cond_2
    goto :goto_1

    .line 483
    .end local v5    # "i":Ljava/security/Principal;
    .end local v6    # "s":Ljava/security/Principal;
    .end local v7    # "e":Ljava/util/Enumeration;
    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 485
    const/4 v0, 0x0

    goto :goto_3

    .line 489
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 490
    if-eq v3, v0, :cond_5

    .line 492
    move-object v0, v3

    goto :goto_3

    .line 496
    :cond_5
    const/4 v0, 0x0

    .line 499
    .end local v2    # "x509c":Ljava/security/cert/X509Certificate;
    .end local v3    # "nextC":Ljava/security/cert/Certificate;
    .end local v4    # "akiBytes":[B
    :goto_3
    goto :goto_0

    .line 501
    :cond_6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 503
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v2

    if-eq v3, v4, :cond_7

    .line 505
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    aput-object v4, v2, v3

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 508
    .end local v3    # "i":I
    :cond_7
    return-object v2

    .line 511
    .end local v1    # "cs":Ljava/util/Vector;
    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    :cond_8
    return-object v1

    .line 418
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificateChain."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 516
    if-eqz p1, :cond_1

    .line 520
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 518
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 532
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 28
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    .line 871
    return-void

    .line 874
    :cond_0
    const/4 v2, 0x1

    .line 875
    .local v2, "noMac":Z
    const/4 v9, 0x1

    .line 877
    .local v9, "noEnc":Z
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 879
    .local v10, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 881
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->read()I

    move-result v11

    .line 882
    .local v11, "head":I
    if-ltz v11, :cond_25

    .line 886
    const/16 v0, 0x30

    if-ne v11, v0, :cond_24

    .line 891
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->reset()V

    .line 893
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v10}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v0

    .line 898
    .local v12, "bIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v13, v0

    .line 903
    .local v13, "bag":Lorg/bouncycastle/asn1/pkcs/Pfx;
    nop

    .line 905
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v14

    .line 906
    .local v14, "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v15, v0

    .line 907
    .local v15, "chain":Ljava/util/Vector;
    const/16 v16, 0x0

    .line 908
    .local v16, "unmarkedKey":Z
    const/16 v17, 0x0

    .line 910
    .local v17, "wrongPKCS12Zero":Z
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 912
    if-eqz p2, :cond_4

    .line 917
    const/16 v18, 0x0

    .line 918
    .end local v2    # "noMac":Z
    .local v18, "noMac":Z
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v19

    .line 919
    .local v19, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v20

    .line 920
    .local v20, "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 921
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v3

    .line 922
    .local v3, "salt":[B
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 923
    array-length v0, v3

    iput v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 925
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 929
    .local v7, "data":[B
    :try_start_1
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    move-object/from16 v5, p2

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 930
    .local v0, "res":[B
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v2

    .line 932
    .local v2, "dig":[B
    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 934
    array-length v4, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v4, :cond_2

    .line 940
    :try_start_3
    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    move-object/from16 v21, v2

    move-object v2, v4

    .end local v2    # "dig":[B
    .local v21, "dig":[B
    iget v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    move-object/from16 v22, v6

    const/4 v6, 0x1

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v8, v22

    .end local v21    # "dig":[B
    .local v0, "dig":[B
    .local v23, "res":[B
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v2

    .line 942
    .end local v23    # "res":[B
    .local v2, "res":[B
    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 947
    const/4 v4, 0x1

    move/from16 v17, v4

    .end local v17    # "wrongPKCS12Zero":Z
    .local v4, "wrongPKCS12Zero":Z
    goto :goto_0

    .line 944
    .end local v4    # "wrongPKCS12Zero":Z
    .restart local v17    # "wrongPKCS12Zero":Z
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "salt":[B
    .end local v7    # "data":[B
    .end local v9    # "noEnc":Z
    .end local v10    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v11    # "head":I
    .end local v12    # "bIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v13    # "bag":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .end local v14    # "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v15    # "chain":Ljava/util/Vector;
    .end local v16    # "unmarkedKey":Z
    .end local v17    # "wrongPKCS12Zero":Z
    .end local v18    # "noMac":Z
    .end local v19    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v20    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v4

    .line 936
    .local v0, "res":[B
    .local v2, "dig":[B
    .restart local v3    # "salt":[B
    .restart local v7    # "data":[B
    .restart local v9    # "noEnc":Z
    .restart local v10    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v11    # "head":I
    .restart local v12    # "bIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v13    # "bag":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .restart local v14    # "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v15    # "chain":Ljava/util/Vector;
    .restart local v16    # "unmarkedKey":Z
    .restart local v17    # "wrongPKCS12Zero":Z
    .restart local v18    # "noMac":Z
    .restart local v19    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .restart local v20    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_2
    move-object/from16 v23, v0

    move-object v0, v2

    move-object v8, v6

    .end local v2    # "dig":[B
    .local v0, "dig":[B
    .restart local v23    # "res":[B
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "salt":[B
    .end local v7    # "data":[B
    .end local v9    # "noEnc":Z
    .end local v10    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v11    # "head":I
    .end local v12    # "bIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v13    # "bag":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .end local v14    # "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v15    # "chain":Ljava/util/Vector;
    .end local v16    # "unmarkedKey":Z
    .end local v17    # "wrongPKCS12Zero":Z
    .end local v18    # "noMac":Z
    .end local v19    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v20    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 932
    .end local v23    # "res":[B
    .local v0, "res":[B
    .restart local v2    # "dig":[B
    .restart local v3    # "salt":[B
    .restart local v7    # "data":[B
    .restart local v9    # "noEnc":Z
    .restart local v10    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v11    # "head":I
    .restart local v12    # "bIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v13    # "bag":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .restart local v14    # "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v15    # "chain":Ljava/util/Vector;
    .restart local v16    # "unmarkedKey":Z
    .restart local v17    # "wrongPKCS12Zero":Z
    .restart local v18    # "noMac":Z
    .restart local v19    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .restart local v20    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_3
    move-object/from16 v23, v0

    move-object v0, v2

    .line 957
    .end local v0    # "res":[B
    .end local v2    # "dig":[B
    :goto_0
    move/from16 v2, v17

    goto :goto_3

    .line 954
    :catch_0
    move-exception v0

    goto :goto_1

    .line 950
    :catch_1
    move-exception v0

    goto :goto_2

    .line 954
    :catch_2
    move-exception v0

    move-object/from16 v5, p2

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error constructing MAC: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object/from16 v5, p2

    .line 952
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    throw v0

    .line 914
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "salt":[B
    .end local v7    # "data":[B
    .end local v18    # "noMac":Z
    .end local v19    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v20    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .local v2, "noMac":Z
    :cond_4
    move-object/from16 v5, p2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "no password supplied when one expected"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_5
    move-object/from16 v5, p2

    move/from16 v18, v2

    move/from16 v2, v17

    .line 960
    .end local v17    # "wrongPKCS12Zero":Z
    .local v2, "wrongPKCS12Zero":Z
    .restart local v18    # "noMac":Z
    :goto_3
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 961
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 963
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 965
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 966
    .local v0, "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v8

    .line 967
    .local v8, "authSafe":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    .line 969
    .local v3, "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v4, 0x0

    move/from16 v17, v16

    move/from16 v16, v9

    move v9, v4

    .local v9, "i":I
    .local v16, "noEnc":Z
    .local v17, "unmarkedKey":Z
    :goto_4
    array-length v4, v3

    if-eq v9, v4, :cond_10

    .line 971
    aget-object v4, v3, v9

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 973
    aget-object v4, v3, v9

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    .line 974
    .local v4, "authSafeContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 976
    .local v6, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v19, 0x0

    move/from16 v7, v19

    .local v7, "j":I
    :goto_5
    move-object/from16 v20, v0

    .end local v0    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v20, "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v7, v0, :cond_9

    .line 978
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v0

    .line 979
    .local v0, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v21, v3

    .end local v3    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    move-object/from16 v22, v4

    .end local v4    # "authSafeContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v22, "authSafeContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 981
    invoke-direct {v1, v0, v5, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Lorg/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z

    move-result v3

    .line 982
    .end local v17    # "unmarkedKey":Z
    .local v3, "unmarkedKey":Z
    const/4 v4, 0x0

    move/from16 v17, v3

    move/from16 v16, v4

    .end local v16    # "noEnc":Z
    .local v4, "noEnc":Z
    goto :goto_6

    .line 984
    .end local v3    # "unmarkedKey":Z
    .end local v4    # "noEnc":Z
    .restart local v16    # "noEnc":Z
    .restart local v17    # "unmarkedKey":Z
    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 986
    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 988
    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 990
    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Lorg/bouncycastle/asn1/pkcs/SafeBag;)V

    goto :goto_6

    .line 995
    :cond_8
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v0

    .end local v0    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .local v23, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra in data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v23 .. v23}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    .end local v23    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_5

    .end local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v22    # "authSafeContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v3, "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v4, "authSafeContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_9
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 999
    .end local v3    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v4    # "authSafeContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "j":I
    .restart local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    move-object/from16 v1, p0

    move/from16 v25, v2

    goto/16 :goto_9

    .line 1000
    .end local v20    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v0, "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v3    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    .end local v0    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v3    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v20    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    aget-object v0, v21, v9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1002
    aget-object v0, v21, v9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v0

    .line 1003
    .local v0, "d":Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 1004
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 1003
    move v5, v2

    .end local v2    # "wrongPKCS12Zero":Z
    .local v5, "wrongPKCS12Zero":Z
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v2

    .line 1005
    move v3, v5

    move-object v5, v4

    .end local v5    # "wrongPKCS12Zero":Z
    .local v2, "octets":[B
    .local v3, "wrongPKCS12Zero":Z
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 1007
    .local v4, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    .line 1008
    .end local v16    # "noEnc":Z
    .local v6, "noEnc":Z
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_7
    move-object/from16 v22, v0

    .end local v0    # "d":Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    .local v22, "d":Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v7, v0, :cond_e

    .line 1010
    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v0

    .line 1011
    .local v0, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v23, v2

    .end local v2    # "octets":[B
    .local v23, "octets":[B
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    move-object/from16 v24, v4

    .end local v4    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v24, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1013
    invoke-virtual {v15, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move/from16 v25, v3

    goto :goto_8

    .line 1015
    :cond_b
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1017
    invoke-direct {v1, v0, v5, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Lorg/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z

    move-result v2

    move/from16 v17, v2

    move/from16 v25, v3

    .end local v17    # "unmarkedKey":Z
    .local v2, "unmarkedKey":Z
    goto :goto_8

    .line 1019
    .end local v2    # "unmarkedKey":Z
    .restart local v17    # "unmarkedKey":Z
    :cond_c
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1021
    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Lorg/bouncycastle/asn1/pkcs/SafeBag;)V

    move/from16 v25, v3

    goto :goto_8

    .line 1026
    :cond_d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v0

    .end local v0    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .local v16, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v3

    .end local v3    # "wrongPKCS12Zero":Z
    .local v25, "wrongPKCS12Zero":Z
    const-string v3, "extra in encryptedData "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1027
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1008
    .end local v16    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move/from16 v3, v25

    goto/16 :goto_7

    .end local v23    # "octets":[B
    .end local v24    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "wrongPKCS12Zero":Z
    .local v2, "octets":[B
    .restart local v3    # "wrongPKCS12Zero":Z
    .restart local v4    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_e
    move-object/from16 v23, v2

    move/from16 v25, v3

    move-object/from16 v24, v4

    .line 1030
    .end local v2    # "octets":[B
    .end local v3    # "wrongPKCS12Zero":Z
    .end local v4    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "j":I
    .end local v22    # "d":Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    .restart local v25    # "wrongPKCS12Zero":Z
    move/from16 v16, v6

    goto :goto_9

    .line 1034
    .end local v6    # "noEnc":Z
    .end local v25    # "wrongPKCS12Zero":Z
    .local v2, "wrongPKCS12Zero":Z
    .local v16, "noEnc":Z
    :cond_f
    move-object/from16 v1, p0

    move/from16 v25, v2

    .end local v2    # "wrongPKCS12Zero":Z
    .restart local v25    # "wrongPKCS12Zero":Z
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, v21, v9

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, v21, v9

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move/from16 v2, v25

    const/4 v7, 0x0

    goto/16 :goto_4

    .end local v20    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v25    # "wrongPKCS12Zero":Z
    .local v0, "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v2    # "wrongPKCS12Zero":Z
    .local v3, "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    :cond_10
    move-object/from16 v20, v0

    move/from16 v25, v2

    move-object/from16 v21, v3

    .end local v0    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "wrongPKCS12Zero":Z
    .end local v3    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v20    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v25    # "wrongPKCS12Zero":Z
    move/from16 v9, v16

    move/from16 v16, v17

    goto :goto_a

    .line 963
    .end local v8    # "authSafe":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v17    # "unmarkedKey":Z
    .end local v20    # "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v21    # "c":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v25    # "wrongPKCS12Zero":Z
    .restart local v2    # "wrongPKCS12Zero":Z
    .local v9, "noEnc":Z
    .local v16, "unmarkedKey":Z
    :cond_11
    move/from16 v25, v2

    .line 1040
    .end local v2    # "wrongPKCS12Zero":Z
    .restart local v25    # "wrongPKCS12Zero":Z
    :goto_a
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 1041
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 1042
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 1044
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v2, v0, :cond_21

    .line 1046
    invoke-virtual {v15, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    .line 1047
    .local v3, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v4

    .line 1049
    .local v4, "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1058
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 1059
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1060
    .local v0, "cIn":Ljava/io/ByteArrayInputStream;
    iget-object v6, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1065
    .end local v0    # "cIn":Ljava/io/ByteArrayInputStream;
    .local v6, "cert":Ljava/security/cert/Certificate;
    nop

    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v7, 0x0

    .line 1073
    .local v7, "alias":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 1075
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1076
    .local v8, "e":Ljava/util/Enumeration;
    :goto_c
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 1078
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v0

    .end local v0    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v19, "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 1079
    .local v0, "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    move/from16 v17, v2

    .end local v2    # "i":I
    .local v17, "i":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 1080
    .local v2, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v20, v3

    .end local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .local v20, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 1082
    .local v3, "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v22

    if-lez v22, :cond_19

    .line 1084
    move-object/from16 v22, v0

    const/4 v0, 0x0

    .end local v0    # "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v22, "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 1085
    .local v0, "attr":Lorg/bouncycastle/asn1/ASN1Primitive;
    const/16 v21, 0x0

    .line 1087
    .local v21, "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v24, v4

    .end local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .local v24, "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    instance-of v4, v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_17

    .line 1089
    move-object v4, v6

    check-cast v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1091
    .end local v21    # "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .local v4, "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v4, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    .line 1092
    .local v21, "existing":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v21, :cond_15

    .line 1095
    move-object/from16 v26, v7

    .end local v7    # "alias":Ljava/lang/String;
    .local v26, "alias":Ljava/lang/String;
    sget-object v7, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1098
    move-object v7, v0

    check-cast v7, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 1099
    .local v7, "id":Ljava/lang/String;
    move-object/from16 v27, v8

    .end local v8    # "e":Ljava/util/Enumeration;
    .local v27, "e":Ljava/util/Enumeration;
    iget-object v8, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v8}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->-$$Nest$fgetkeys(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v8}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->-$$Nest$fgetkeys(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 1101
    move/from16 v2, v17

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v24

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto/16 :goto_c

    .line 1095
    .end local v7    # "id":Ljava/lang/String;
    .end local v27    # "e":Ljava/util/Enumeration;
    .restart local v8    # "e":Ljava/util/Enumeration;
    :cond_12
    move-object/from16 v27, v8

    .line 1106
    .end local v8    # "e":Ljava/util/Enumeration;
    .restart local v27    # "e":Ljava/util/Enumeration;
    :cond_13
    invoke-interface/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_d

    .line 1108
    :cond_14
    new-instance v7, Ljava/io/IOException;

    const-string v8, "attempt to add existing attribute with different value"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1114
    .end local v26    # "alias":Ljava/lang/String;
    .end local v27    # "e":Ljava/util/Enumeration;
    .local v7, "alias":Ljava/lang/String;
    .restart local v8    # "e":Ljava/util/Enumeration;
    :cond_15
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .restart local v26    # "alias":Ljava/lang/String;
    .restart local v27    # "e":Ljava/util/Enumeration;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_16

    .line 1116
    invoke-interface {v4, v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_d

    .line 1120
    :cond_16
    invoke-interface {v4, v2, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1125
    .end local v21    # "existing":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_d
    move-object/from16 v21, v4

    goto :goto_e

    .line 1087
    .end local v4    # "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v26    # "alias":Ljava/lang/String;
    .end local v27    # "e":Ljava/util/Enumeration;
    .restart local v7    # "alias":Ljava/lang/String;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .local v21, "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    :cond_17
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 1125
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .restart local v26    # "alias":Ljava/lang/String;
    .restart local v27    # "e":Ljava/util/Enumeration;
    :goto_e
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1127
    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    .end local v26    # "alias":Ljava/lang/String;
    .restart local v7    # "alias":Ljava/lang/String;
    goto :goto_f

    .line 1129
    .end local v7    # "alias":Ljava/lang/String;
    .restart local v26    # "alias":Ljava/lang/String;
    :cond_18
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1131
    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v0, v4

    move-object/from16 v7, v26

    .end local v19    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .local v4, "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    goto :goto_f

    .line 1082
    .end local v21    # "bagAttr":Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v22    # "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v26    # "alias":Ljava/lang/String;
    .end local v27    # "e":Ljava/util/Enumeration;
    .local v0, "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v4, "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v7    # "alias":Ljava/lang/String;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .restart local v19    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_19
    move-object/from16 v22, v0

    move-object/from16 v24, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 1134
    .end local v0    # "sq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "attrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .restart local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v26    # "alias":Ljava/lang/String;
    .restart local v27    # "e":Ljava/util/Enumeration;
    :cond_1a
    move-object/from16 v0, v19

    move-object/from16 v7, v26

    .end local v19    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v26    # "alias":Ljava/lang/String;
    .local v0, "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v7    # "alias":Ljava/lang/String;
    :goto_f
    move/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v24

    move-object/from16 v8, v27

    goto/16 :goto_c

    .line 1076
    .end local v17    # "i":I
    .end local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v27    # "e":Ljava/util/Enumeration;
    .local v2, "i":I
    .local v3, "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v8    # "e":Ljava/util/Enumeration;
    :cond_1b
    move-object/from16 v19, v0

    move/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .end local v0    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "i":I
    .end local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Enumeration;
    .restart local v17    # "i":I
    .restart local v19    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v26    # "alias":Ljava/lang/String;
    .restart local v27    # "e":Ljava/util/Enumeration;
    goto :goto_10

    .line 1073
    .end local v17    # "i":I
    .end local v19    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v26    # "alias":Ljava/lang/String;
    .end local v27    # "e":Ljava/util/Enumeration;
    .restart local v0    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v2    # "i":I
    .restart local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v7    # "alias":Ljava/lang/String;
    :cond_1c
    move/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    .line 1137
    .end local v2    # "i":I
    .end local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v17    # "i":I
    .restart local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :goto_10
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    if-eqz v16, :cond_1d

    .line 1141
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1143
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1145
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string/jumbo v8, "unmarked"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1147
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_11

    .line 1154
    :cond_1d
    if-eqz v0, :cond_1e

    .line 1156
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1158
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .end local v2    # "name":Ljava/lang/String;
    :cond_1e
    if-eqz v7, :cond_1f

    .line 1162
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, v7, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1044
    .end local v0    # "localId":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "alias":Ljava/lang/String;
    .end local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :cond_1f
    :goto_11
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "i":I
    .local v2, "i":I
    goto/16 :goto_b

    .line 1062
    .restart local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :catch_4
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    .line 1064
    .end local v2    # "i":I
    .end local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "i":I
    .restart local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "i":I
    .end local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v2    # "i":I
    .restart local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    :cond_20
    move/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    .end local v2    # "i":I
    .end local v3    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v17    # "i":I
    .restart local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported certificate type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    .end local v17    # "i":I
    .end local v20    # "b":Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v24    # "cb":Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v2    # "i":I
    :cond_21
    move/from16 v17, v2

    .line 1167
    .end local v2    # "i":I
    if-eqz v18, :cond_23

    if-eqz v9, :cond_23

    .line 1169
    if-eqz v5, :cond_23

    array-length v0, v5

    if-eqz v0, :cond_23

    .line 1171
    const-string v0, "org.bouncycastle.pkcs12.ignore_useless_passwd"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_12

    .line 1173
    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v2, "password supplied for keystore that does not require one"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_23
    :goto_12
    return-void

    .line 900
    .end local v13    # "bag":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .end local v14    # "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v15    # "chain":Ljava/util/Vector;
    .end local v16    # "unmarkedKey":Z
    .end local v18    # "noMac":Z
    .end local v25    # "wrongPKCS12Zero":Z
    .local v2, "noMac":Z
    :catch_5
    move-exception v0

    move-object/from16 v5, p2

    .line 902
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 888
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "bIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_24
    move-object/from16 v5, p2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v3, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_25
    move-object/from16 v5, p2

    new-instance v0, Ljava/io/EOFException;

    const-string v3, "no data in keystore stream"

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .param p1, "loadStoreParameter"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadStoreParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 847
    if-nez p1, :cond_0

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_0

    .line 851
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;

    if-eqz v0, :cond_1

    .line 853
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;

    .line 855
    .local v0, "bcParam":Lorg/bouncycastle/jcajce/BCLoadStoreParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;->extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 856
    .end local v0    # "bcParam":Lorg/bouncycastle/jcajce/BCLoadStoreParameter;
    nop

    .line 862
    :goto_0
    return-void

    .line 859
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 860
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no support for \'param\' of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineProbe(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "cert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-void

    .line 559
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alias",
            "key",
            "password",
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 582
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_4

    .line 587
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 597
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    if-eqz p4, :cond_3

    .line 600
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p4

    if-eq v0, v1, :cond_3

    .line 604
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 607
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 584
    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "alias",
            "key",
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 4

    .line 611
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 613
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 614
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 620
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 623
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 625
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .end local v2    # "a":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 629
    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    return v2
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1417
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1418
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1372
    if-eqz p1, :cond_5

    .line 1377
    instance-of v0, p1, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1379
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No support for \'param\' of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_1
    :goto_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    if-eqz v0, :cond_2

    .line 1387
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    .local v0, "bcParam":Lorg/bouncycastle/jcajce/PKCS12StoreParameter;
    goto :goto_1

    .line 1391
    .end local v0    # "bcParam":Lorg/bouncycastle/jcajce/PKCS12StoreParameter;
    :cond_2
    new-instance v0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1392
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 1396
    .restart local v0    # "bcParam":Lorg/bouncycastle/jcajce/PKCS12StoreParameter;
    :goto_1
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 1397
    .local v1, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v1, :cond_3

    .line 1399
    const/4 v2, 0x0

    .local v2, "password":[C
    goto :goto_2

    .line 1401
    .end local v2    # "password":[C
    :cond_3
    instance-of v2, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v2, :cond_4

    .line 1403
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 1411
    .restart local v2    # "password":[C
    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1412
    return-void

    .line 1407
    .end local v2    # "password":[C
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1408
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for protection parameter of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1374
    .end local v0    # "bcParam":Lorg/bouncycastle/jcajce/PKCS12StoreParameter;
    .end local v1    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'param\' arg cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rand"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 280
    return-void
.end method

.method protected unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 8
    .param p1, "algId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algId",
            "data",
            "password",
            "wrongPKCS12Zero"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 642
    .local v0, "algorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    .line 644
    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v1

    .line 645
    .local v1, "pbeParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 646
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    .line 647
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 649
    .local v5, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 651
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v7, p3, p4}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 653
    .local v7, "key":Lorg/bouncycastle/jcajce/PKCS12Key;
    invoke-virtual {v6, v4, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 656
    invoke-virtual {v6, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    return-object v2

    .line 658
    .end local v1    # "pbeParams":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v5    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "key":Lorg/bouncycastle/jcajce/PKCS12Key;
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    invoke-direct {p0, v4, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 664
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 670
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_1
    nop

    .line 672
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception unwrapping private key - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "key",
            "pbeParams",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 687
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 688
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 689
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    .line 690
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 692
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v3, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 694
    .local v3, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 696
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v1    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .local v4, "out":[B
    nop

    .line 703
    return-object v4

    .line 698
    .end local v4    # "out":[B
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encrypting data - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected wrapKey(Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;[C)[B
    .locals 6
    .param p1, "encAlgId"    # Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encAlgId",
            "key",
            "pbeParams",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v1

    .line 714
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v2

    .line 715
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v0, p4, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 720
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "PBKDF2withHMacSHA256"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 722
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 724
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 725
    .local v3, "algParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 727
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 729
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v1    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "algParams":Ljava/security/AlgorithmParameters;
    .local v4, "out":[B
    nop

    .line 736
    return-object v4

    .line 731
    .end local v4    # "out":[B
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encrypting data - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.class public Lorg/bouncycastle/openssl/PKCS8Generator;
.super Ljava/lang/Object;
.source "PKCS8Generator.java"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field public static final AES_128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES_192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES_256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DES3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_2DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_3DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC2_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC2_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC4_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC4_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PRF_HMACGOST3411:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA3_224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA3_256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA3_384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA3_512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_HMACSHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->DES3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_3DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_2DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411Hmac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACGOST3411:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA3_224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA3_256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA3_384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PRF_HMACSHA3_512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 0
    .param p1, "key"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "outputEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "outputEncryptor"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 57
    iput-object p2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    .line 58
    return-void
.end method

.method private generate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 7
    .param p1, "key"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v0

    .line 80
    .local v0, "keyData":[B
    if-nez p2, :cond_0

    .line 82
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemObject;

    const-string v2, "PRIVATE KEY"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    return-object v1

    .line 85
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 89
    .local v2, "cOut":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 91
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 93
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 95
    .local v3, "info":Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    new-instance v4, Lorg/bouncycastle/util/io/pem/PemObject;

    const-string v5, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 97
    .end local v0    # "keyData":[B
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "cOut":Ljava/io/OutputStream;
    .end local v3    # "info":Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process encoded key data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    iget-object v1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/openssl/PKCS8Generator;->generate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/openssl/PKCS8Generator;->generate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    return-object v0
.end method

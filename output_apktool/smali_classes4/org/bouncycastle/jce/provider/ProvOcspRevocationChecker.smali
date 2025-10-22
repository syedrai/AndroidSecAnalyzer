.class Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;
.super Ljava/lang/Object;
.source "ProvOcspRevocationChecker.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;


# static fields
.field private static final DEFAULT_OCSP_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_OCSP_TIMEOUT:I = 0x3a98

.field private static final oids:Ljava/util/Map;


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private isEnabledOCSP:Z

.field private ocspURL:Ljava/lang/String;

.field private parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

.field private final parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    .line 84
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA224WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA384WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA512WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "XMSS"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "XMSSMT"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA1WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA224WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA256WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA384WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA512WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/provider/ProvRevocationChecker;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0
    .param p1, "parent"    # Lorg/bouncycastle/jce/provider/ProvRevocationChecker;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "helper"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    .line 131
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 132
    return-void
.end method

.method private static calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B
    .locals 2
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "key"
        }
    .end annotation

    .line 540
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 542
    .local v0, "info":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private createCertID(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 1
    .param p1, "base"    # Lorg/bouncycastle/asn1/ocsp/CertID;
    .param p2, "issuer"    # Lorg/bouncycastle/asn1/x509/Certificate;
    .param p3, "serialNumber"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "base",
            "issuer",
            "serialNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 561
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->createCertID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    return-object v0
.end method

.method private createCertID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 5
    .param p1, "digestAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "issuer"    # Lorg/bouncycastle/asn1/x509/Certificate;
    .param p3, "serialNumber"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlg",
            "issuer",
            "serialNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 569
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 571
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 573
    .local v1, "issuerNameHash":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 574
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v3

    .line 573
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 576
    .local v2, "issuerKeyHash":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v3, Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-direct {v3, p1, v1, v2, p3}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 578
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "issuerNameHash":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "issuerKeyHash":Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem creating ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private extractCert()Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 550
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 552
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot process signing cert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method private static getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 5
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 587
    invoke-static {p0}, Lorg/bouncycastle/jcajce/util/MessageDigestUtils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 590
    .local v1, "dIndex":I
    if-lez v1, :cond_0

    const-string v2, "SHA3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 595
    :cond_0
    return-object v0
.end method

.method static getOcspResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 345
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 346
    .local v0, "extValue":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 348
    return-object v1

    .line 352
    :cond_0
    nop

    .line 353
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 352
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v2

    .line 355
    .local v2, "aiAccess":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v3

    .line 356
    .local v3, "descriptions":[Lorg/bouncycastle/asn1/x509/AccessDescription;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-eq v4, v5, :cond_2

    .line 358
    aget-object v5, v3, v4

    .line 359
    .local v5, "aDesc":Lorg/bouncycastle/asn1/x509/AccessDescription;
    sget-object v6, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    .line 362
    .local v6, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 366
    :try_start_0
    new-instance v7, Ljava/net/URI;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v8}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 368
    :catch_0
    move-exception v7

    .line 356
    .end local v5    # "aDesc":Lorg/bouncycastle/asn1/x509/AccessDescription;
    .end local v6    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method private static getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigAlgId"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 603
    .local v0, "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/DERNull;->equals(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    .line 608
    .local v1, "rsaParams":Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WITHRSAANDMGF1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 612
    .end local v1    # "rsaParams":Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    :cond_0
    sget-object v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    sget-object v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->oids:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 617
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSignerCert(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "basicResp"    # Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .param p1, "signingCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "basicResp",
            "signingCert",
            "responderCert",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    .line 471
    .local v0, "responderID":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getKeyHash()[B

    move-result-object v1

    .line 472
    .local v1, "keyHash":[B
    if-eqz v1, :cond_2

    .line 474
    const-string v2, "SHA1"

    invoke-interface {p3, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 475
    .local v2, "digest":Ljava/security/MessageDigest;
    move-object v3, p2

    .line 477
    .local v3, "sigCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    return-object v3

    .line 485
    :cond_0
    move-object v3, p1

    .line 486
    if-eqz v3, :cond_1

    .line 488
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    return-object v3

    .line 493
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "sigCert":Ljava/security/cert/X509Certificate;
    :cond_1
    goto :goto_0

    .line 496
    :cond_2
    sget-object v2, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    .line 497
    .local v2, "name":Lorg/bouncycastle/asn1/x500/X500Name;
    move-object v3, p2

    .line 499
    .restart local v3    # "sigCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_3

    .line 501
    sget-object v4, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 503
    return-object v3

    .line 507
    :cond_3
    move-object v3, p1

    .line 508
    if-eqz v3, :cond_4

    .line 510
    sget-object v4, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 512
    return-object v3

    .line 517
    .end local v2    # "name":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v3    # "sigCert":Ljava/security/cert/X509Certificate;
    :cond_4
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static responderMatches(Lorg/bouncycastle/asn1/ocsp/ResponderID;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z
    .locals 4
    .param p0, "responderID"    # Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "responderID",
            "certificate",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getKeyHash()[B

    move-result-object v0

    .line 524
    .local v0, "keyHash":[B
    if-eqz v0, :cond_0

    .line 526
    const-string v1, "SHA1"

    invoke-interface {p2, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 528
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->calcKeyHash(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    return v2

    .line 532
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 534
    .local v1, "name":Lorg/bouncycastle/asn1/x500/X500Name;
    sget-object v2, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static validatedOcspResponse(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;[BLjava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z
    .locals 16
    .param p0, "basicResp"    # Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .param p1, "parameters"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p2, "nonce"    # [B
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "basicResp",
            "parameters",
            "nonce",
            "responderCert",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 385
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "OCSP response failure: "

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 387
    .local v0, "certs":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 389
    .local v4, "sig":Ljava/security/Signature;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    :try_start_1
    invoke-static {v6, v5, v7, v2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getSignerCert(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 390
    .local v5, "sigCert":Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v9, "OCSP responder certificate not found"

    invoke-direct {v8, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .end local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p2    # "nonce":[B
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8

    .line 395
    .restart local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p2    # "nonce":[B
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_1
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    .line 397
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_1

    .line 401
    :cond_2
    const-string v10, "X.509"

    invoke-interface {v2, v10}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    .line 403
    .local v10, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-interface {v12}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 406
    .local v11, "ocspCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 412
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v12

    invoke-static {v12, v11, v2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->responderMatches(Lorg/bouncycastle/asn1/ocsp/ResponderID;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 422
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v12

    .line 423
    .local v12, "extendedKeyUsage":Ljava/util/List;
    if-eqz v12, :cond_6

    sget-object v13, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 429
    invoke-virtual {v4, v11}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 432
    .end local v10    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v11    # "ocspCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "extendedKeyUsage":Ljava/util/List;
    :goto_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v10

    const-string v11, "DER"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/Signature;->update([B)V

    .line 434
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/Signature;->verify([B)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 436
    if-eqz v1, :cond_4

    .line 438
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v8

    .line 440
    .local v8, "exts":Lorg/bouncycastle/asn1/x509/Extensions;
    sget-object v10, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v10

    .line 442
    .local v10, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 444
    :cond_3
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const-string v12, "nonce mismatch in OCSP response"

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v14

    invoke-direct {v11, v12, v9, v13, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p2    # "nonce":[B
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v11

    .line 447
    .end local v8    # "exts":Lorg/bouncycastle/asn1/x509/Extensions;
    .end local v10    # "ext":Lorg/bouncycastle/asn1/x509/Extension;
    .restart local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p2    # "nonce":[B
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_4
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 450
    :cond_5
    return v8

    .line 425
    .local v10, "cf":Ljava/security/cert/CertificateFactory;
    .restart local v11    # "ocspCert":Ljava/security/cert/X509Certificate;
    .restart local v12    # "extendedKeyUsage":Ljava/util/List;
    :cond_6
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "responder certificate not valid for signing OCSP responses"

    .line 426
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v15

    invoke-direct {v8, v13, v9, v14, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p2    # "nonce":[B
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8

    .line 414
    .end local v12    # "extendedKeyUsage":Ljava/util/List;
    .restart local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p2    # "nonce":[B
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_7
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v12, "responder certificate does not match responderID"

    .line 415
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v14

    invoke-direct {v8, v12, v9, v13, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p2    # "nonce":[B
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    .end local v0    # "certs":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "sig":Ljava/security/Signature;
    .end local v5    # "sigCert":Ljava/security/cert/X509Certificate;
    .end local v10    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v11    # "ocspCert":Ljava/security/cert/X509Certificate;
    .restart local p0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local p1    # "parameters":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p2    # "nonce":[B
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 456
    :catch_1
    move-exception v0

    goto :goto_4

    .line 452
    :catch_2
    move-exception v0

    goto :goto_5

    .line 460
    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 462
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v8

    invoke-direct {v4, v3, v0, v5, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 456
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 458
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_4
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v8

    invoke-direct {v4, v3, v0, v5, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 452
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    .line 454
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_5
    throw v0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .locals 23
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 177
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 178
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v3

    .line 179
    .local v3, "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v4

    .line 181
    .local v4, "ocspUri":Ljava/net/URI;
    if-nez v4, :cond_1

    .line 183
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v5, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 193
    move-object v7, v4

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configuration error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 192
    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v7

    iget-object v8, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v8

    invoke-direct {v5, v6, v0, v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 197
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getOcspResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;

    move-result-object v4

    move-object v7, v4

    goto :goto_0

    .line 181
    :cond_1
    move-object v7, v4

    .line 201
    .end local v4    # "ocspUri":Ljava/net/URI;
    .local v7, "ocspUri":Ljava/net/URI;
    :goto_0
    const/4 v4, 0x0

    .line 202
    .local v4, "nonce":[B
    const/4 v11, 0x0

    .line 203
    .local v11, "preValidated":Z
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v12, 0x0

    if-nez v0, :cond_4

    if-eqz v7, :cond_4

    .line 206
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    .line 207
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_3

    iget-boolean v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEnabledOCSP:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 210
    :cond_2
    new-instance v0, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object v5, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 211
    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v5

    iget-object v6, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v6

    const-string v8, "OCSP disabled by \"ocsp.enable\" setting"

    invoke-direct {v0, v8, v12, v5, v6}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 214
    :cond_3
    :goto_1
    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->extractCert()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v13

    .line 217
    .local v13, "issuer":Lorg/bouncycastle/asn1/x509/Certificate;
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v0, v13, v5}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->createCertID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v5

    .line 219
    .local v5, "id":Lorg/bouncycastle/asn1/ocsp/CertID;
    iget-object v6, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/jce/provider/OcspCache;->getOcspResponse(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v6

    .line 223
    .local v6, "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :try_start_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getEncoded()[B

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    const/4 v11, 0x1

    .line 230
    nop

    .line 231
    .end local v5    # "id":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v6    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v13    # "issuer":Lorg/bouncycastle/asn1/x509/Certificate;
    goto :goto_3

    .line 226
    .restart local v5    # "id":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local v6    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v13    # "issuer":Lorg/bouncycastle/asn1/x509/Certificate;
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    iget-object v9, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 229
    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v9

    iget-object v10, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v10

    const-string/jumbo v12, "unable to encode OCSP response"

    invoke-direct {v8, v12, v0, v9, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "id":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v6    # "response":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v13    # "issuer":Lorg/bouncycastle/asn1/x509/Certificate;
    :cond_4
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "exts":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 237
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Extension;

    .line 238
    .local v6, "ext":Ljava/security/cert/Extension;
    invoke-interface {v6}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v8

    .line 240
    .local v8, "value":[B
    sget-object v9, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 242
    move-object v4, v8

    .line 235
    .end local v6    # "ext":Ljava/security/cert/Extension;
    .end local v8    # "value":[B
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 247
    .end local v0    # "exts":Ljava/util/List;
    .end local v5    # "i":I
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 249
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v5

    .line 250
    .local v5, "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    move-object v6, v0

    .line 252
    .local v6, "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v5, :cond_14

    .line 254
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getIntValue()I

    move-result v0

    if-nez v0, :cond_13

    .line 256
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v8

    .line 258
    .local v8, "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v9, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 262
    :try_start_2
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    .line 264
    .local v0, "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    if-nez v11, :cond_8

    :try_start_3
    iget-object v9, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    iget-object v10, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parent:Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    iget-object v13, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v9, v4, v10, v13}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->validatedOcspResponse(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;[BLjava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z

    move-result v9
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    goto/16 :goto_9

    .line 315
    .end local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    goto/16 :goto_a

    .line 311
    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    goto/16 :goto_b

    .line 266
    .restart local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_8
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v9

    .line 268
    .local v9, "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    .line 270
    .local v10, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v13, 0x0

    .line 271
    .local v13, "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-eq v14, v15, :cond_11

    .line 273
    invoke-virtual {v10, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    invoke-static {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v15

    .line 275
    .local v15, "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/bouncycastle/asn1/ASN1Integer;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 277
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v12
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    .line 278
    .local v12, "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    if-eqz v12, :cond_a

    move-object/from16 v16, v0

    .end local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .local v16, "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :try_start_5
    iget-object v0, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v17, v2

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .local v17, "cert":Ljava/security/cert/X509Certificate;
    :try_start_6
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    .line 280
    :cond_9
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "OCSP response expired"

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;)V

    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v7    # "ocspUri":Ljava/net/URI;
    .end local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v11    # "preValidated":Z
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local p1    # "certificate":Ljava/security/cert/Certificate;
    throw v0

    .line 315
    .end local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v14    # "i":I
    .end local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .end local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .restart local v7    # "ocspUri":Ljava/net/URI;
    .restart local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v11    # "preValidated":Z
    .restart local p1    # "certificate":Ljava/security/cert/Certificate;
    :catch_4
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    goto/16 :goto_a

    .line 311
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    :catch_5
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    goto/16 :goto_b

    .line 278
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .restart local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .restart local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local v14    # "i":I
    .restart local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 282
    .end local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    :goto_6
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v0, :cond_c

    goto :goto_7

    .line 315
    .end local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v14    # "i":I
    .end local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .end local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :catch_6
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    goto/16 :goto_a

    .line 311
    :catch_7
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    goto/16 :goto_b

    .line 284
    .restart local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .restart local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .restart local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local v14    # "i":I
    .restart local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .restart local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_b
    :goto_7
    :try_start_7
    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->extractCert()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 286
    .local v0, "issuer":Lorg/bouncycastle/asn1/x509/Certificate;
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->createCertID(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v2

    move-object v13, v2

    .line 288
    .end local v0    # "issuer":Lorg/bouncycastle/asn1/x509/Certificate;
    :cond_c
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 290
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v0

    if-nez v0, :cond_d

    .line 293
    return-void

    .line 295
    :cond_d
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 297
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getStatus()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    .line 298
    .local v0, "info":Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v2

    .line 299
    .local v2, "reason":Lorg/bouncycastle/asn1/x509/CRLReason;
    move-object/from16 v18, v0

    .end local v0    # "info":Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
    .local v18, "info":Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v19, v2

    .end local v2    # "reason":Lorg/bouncycastle/asn1/x509/CRLReason;
    .local v19, "reason":Lorg/bouncycastle/asn1/x509/CRLReason;
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v20
    :try_end_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    move-object/from16 v21, v3

    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .local v21, "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    :try_start_8
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-object/from16 v20, v4

    .end local v4    # "nonce":[B
    .local v20, "nonce":[B
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v22, v5

    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v22, "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :try_start_a
    const-string v5, "certificate revoked, reason=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "), date="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 301
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v7    # "ocspUri":Ljava/net/URI;
    .end local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v11    # "preValidated":Z
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local p1    # "certificate":Ljava/security/cert/Certificate;
    throw v0

    .line 315
    .end local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v14    # "i":I
    .end local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .end local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v18    # "info":Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
    .end local v19    # "reason":Lorg/bouncycastle/asn1/x509/CRLReason;
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .restart local v7    # "ocspUri":Ljava/net/URI;
    .restart local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v11    # "preValidated":Z
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local p1    # "certificate":Ljava/security/cert/Certificate;
    :catch_8
    move-exception v0

    move-object/from16 v22, v5

    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto/16 :goto_a

    .line 311
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_9
    move-exception v0

    move-object/from16 v22, v5

    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto/16 :goto_b

    .line 315
    .end local v20    # "nonce":[B
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_a
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "nonce":[B
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto/16 :goto_a

    .line 311
    .end local v20    # "nonce":[B
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_b
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "nonce":[B
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto/16 :goto_b

    .line 303
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .restart local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .restart local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local v14    # "i":I
    .restart local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .restart local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_e
    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "certificate revoked, details unknown"

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 305
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v7    # "ocspUri":Ljava/net/URI;
    .end local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .end local v11    # "preValidated":Z
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local p1    # "certificate":Ljava/security/cert/Certificate;
    throw v0
    :try_end_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 315
    .end local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v14    # "i":I
    .end local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .end local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .restart local v7    # "ocspUri":Ljava/net/URI;
    .restart local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v11    # "preValidated":Z
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local p1    # "certificate":Ljava/security/cert/Certificate;
    :catch_c
    move-exception v0

    goto :goto_a

    .line 311
    :catch_d
    move-exception v0

    goto/16 :goto_b

    .line 288
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .restart local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .restart local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local v14    # "i":I
    .restart local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .restart local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_f
    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto :goto_8

    .line 315
    .end local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "nextUp":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v14    # "i":I
    .end local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .end local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_e
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto :goto_a

    .line 311
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_f
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    goto :goto_b

    .line 275
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v0, "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .restart local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .restart local v14    # "i":I
    .restart local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 271
    .end local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v15    # "resp":Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .restart local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    const/4 v12, 0x0

    goto/16 :goto_5

    .end local v16    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :cond_11
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 319
    .end local v0    # "basicResp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v9    # "responseData":Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .end local v10    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local v14    # "i":I
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :goto_9
    goto :goto_c

    .line 315
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_10
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 317
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :goto_a
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 318
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    const-string/jumbo v5, "unable to process OCSP response"

    invoke-direct {v2, v5, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :catch_11
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 313
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :goto_b
    throw v0

    .line 258
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :cond_12
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .line 321
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .end local v8    # "respBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :goto_c
    nop

    .line 335
    .end local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    nop

    .line 341
    return-void

    .line 324
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 325
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OCSP response failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 326
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 332
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    .restart local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    :cond_14
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object v5, v12

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .end local v5    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    new-instance v0, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object v2, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 333
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v3

    const-string v4, "no OCSP response found for certificate"

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 338
    .end local v6    # "serialNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "nonce":[B
    .end local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v22    # "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .restart local v4    # "nonce":[B
    :cond_15
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object v5, v12

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    .end local v4    # "nonce":[B
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "nonce":[B
    .restart local v21    # "ocspResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    new-instance v0, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object v2, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 339
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v3

    const-string v4, "no OCSP response found for any certificate"

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public getSoftFailExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forForward"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forForward"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 154
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 160
    const-string v0, "ocsp.enable"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEnabledOCSP:Z

    .line 161
    const-string v0, "ocsp.responderURL"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    .line 162
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 142
    const-string v0, "ocsp.enable"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->isEnabledOCSP:Z

    .line 143
    const-string v0, "ocsp.responderURL"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->ocspURL:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 137
    return-void
.end method

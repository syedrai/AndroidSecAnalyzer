.class Lorg/bouncycastle/jce/provider/ProvRevocationChecker;
.super Ljava/security/cert/PKIXRevocationChecker;
.source "ProvRevocationChecker.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;


# static fields
.field private static final DEFAULT_OCSP_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_OCSP_TIMEOUT:I = 0x3a98

.field private static final oids:Ljava/util/Map;


# instance fields
.field private final crlChecker:Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

.field private parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    .line 41
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA224WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA384WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA512WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "XMSS"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "XMSSMT"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA1WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA224WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA256WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA384WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA512WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->oids:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .param p1, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 87
    new-instance v0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->crlChecker:Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    .line 88
    new-instance v0, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;-><init>(Lorg/bouncycastle/jce/provider/ProvRevocationChecker;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    .line 89
    return-void
.end method

.method private hasOption(Ljava/security/cert/PKIXRevocationChecker$Option;)Z
    .locals 1
    .param p1, "option"    # Ljava/security/cert/PKIXRevocationChecker$Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 3
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certificate",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 129
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 132
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->hasOption(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->hasOption(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->crlChecker:Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->check(Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-direct {p0, v2}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->hasOption(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->check(Ljava/security/cert/Certificate;)V

    goto :goto_0

    .line 151
    :cond_1
    throw v1

    .line 159
    .end local v1    # "e":Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->check(Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 163
    .restart local v1    # "e":Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-direct {p0, v2}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->hasOption(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->crlChecker:Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->check(Ljava/security/cert/Certificate;)V

    .line 173
    .end local v1    # "e":Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
    :goto_1
    return-void

    .line 169
    .restart local v1    # "e":Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
    :cond_3
    throw v1
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

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->getSoftFailExceptions()Ljava/util/List;

    move-result-object v0

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

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 1
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

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->crlChecker:Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->init(Z)V

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->init(Z)V

    .line 114
    return-void
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

    .line 98
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->parameters:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->crlChecker:Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->initialize(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;->ocspChecker:Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->initialize(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V

    .line 101
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .line 118
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

    .line 94
    return-void
.end method

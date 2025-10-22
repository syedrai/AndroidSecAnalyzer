.class public Lorg/bouncycastle/openssl/PEMParser;
.super Lorg/bouncycastle/util/io/pem/PemReader;
.source "PEMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509TrustedCertificateParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509CRLParser;,
        Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;,
        Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;,
        Lorg/bouncycastle/openssl/PEMParser$ECCurveParamsParser;,
        Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$RSAPublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$EncryptedPrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$PrivateKeyParser;
    }
.end annotation


# static fields
.field public static final TYPE_ATTRIBUTE_CERTIFICATE:Ljava/lang/String; = "ATTRIBUTE CERTIFICATE"

.field public static final TYPE_CERTIFICATE:Ljava/lang/String; = "CERTIFICATE"

.field public static final TYPE_CERTIFICATE_REQUEST:Ljava/lang/String; = "CERTIFICATE REQUEST"

.field public static final TYPE_CMS:Ljava/lang/String; = "CMS"

.field public static final TYPE_DSA_PRIVATE_KEY:Ljava/lang/String; = "DSA PRIVATE KEY"

.field public static final TYPE_EC_PARAMETERS:Ljava/lang/String; = "EC PARAMETERS"

.field public static final TYPE_EC_PRIVATE_KEY:Ljava/lang/String; = "EC PRIVATE KEY"

.field public static final TYPE_ENCRYPTED_PRIVATE_KEY:Ljava/lang/String; = "ENCRYPTED PRIVATE KEY"

.field public static final TYPE_NEW_CERTIFICATE_REQUEST:Ljava/lang/String; = "NEW CERTIFICATE REQUEST"

.field public static final TYPE_PKCS7:Ljava/lang/String; = "PKCS7"

.field public static final TYPE_PRIVATE_KEY:Ljava/lang/String; = "PRIVATE KEY"

.field public static final TYPE_PUBLIC_KEY:Ljava/lang/String; = "PUBLIC KEY"

.field public static final TYPE_RSA_PRIVATE_KEY:Ljava/lang/String; = "RSA PRIVATE KEY"

.field public static final TYPE_RSA_PUBLIC_KEY:Ljava/lang/String; = "RSA PUBLIC KEY"

.field public static final TYPE_TRUSTED_CERTIFICATE:Ljava/lang/String; = "TRUSTED CERTIFICATE"

.field public static final TYPE_X509_CERTIFICATE:Ljava/lang/String; = "X509 CERTIFICATE"

.field public static final TYPE_X509_CRL:Ljava/lang/String; = "X509 CRL"


# instance fields
.field protected final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "CERTIFICATE REQUEST"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "NEW CERTIFICATE REQUEST"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "CERTIFICATE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$X509TrustedCertificateParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$X509TrustedCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "TRUSTED CERTIFICATE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "X509 CERTIFICATE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$X509CRLParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$X509CRLParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "X509 CRL"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "PKCS7"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "CMS"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "ATTRIBUTE CERTIFICATE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$ECCurveParamsParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMParser$ECCurveParamsParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    const-string v3, "EC PARAMETERS"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;

    invoke-direct {v1}, Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;-><init>()V

    const-string v3, "PUBLIC KEY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$RSAPublicKeyParser;

    invoke-direct {v1}, Lorg/bouncycastle/openssl/PEMParser$RSAPublicKeyParser;-><init>()V

    const-string v3, "RSA PUBLIC KEY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;

    new-instance v3, Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;

    invoke-direct {v3, v2}, Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMKeyPairParser;)V

    const-string v3, "RSA PRIVATE KEY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;

    new-instance v3, Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;

    invoke-direct {v3, v2}, Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMKeyPairParser;)V

    const-string v3, "DSA PRIVATE KEY"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;

    new-instance v3, Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;

    invoke-direct {v3, v2}, Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMKeyPairParser;)V

    const-string v2, "EC PRIVATE KEY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$EncryptedPrivateKeyParser;

    invoke-direct {v1}, Lorg/bouncycastle/openssl/PEMParser$EncryptedPrivateKeyParser;-><init>()V

    const-string v2, "ENCRYPTED PRIVATE KEY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/openssl/PEMParser$PrivateKeyParser;

    invoke-direct {v1}, Lorg/bouncycastle/openssl/PEMParser$PrivateKeyParser;-><init>()V

    const-string v2, "PRIVATE KEY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method


# virtual methods
.method public getSupportedTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMParser;->readPemObject()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    .line 114
    .local v0, "obj":Lorg/bouncycastle/util/io/pem/PemObject;
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "pemObjectParser":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 120
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/util/io/pem/PemObjectParser;

    invoke-interface {v3, v0}, Lorg/bouncycastle/util/io/pem/PemObjectParser;->parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 124
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognised object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "pemObjectParser":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

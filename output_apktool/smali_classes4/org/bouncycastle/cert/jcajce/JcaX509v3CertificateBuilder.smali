.class public Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;
.super Lorg/bouncycastle/cert/X509v3CertificateBuilder;
.source "JcaX509v3CertificateBuilder.java"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "template"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V
    .locals 7
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
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
            "issuerCert",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .end local p5    # "subject":Ljavax/security/auth/x500/X500Principal;
    .end local p6    # "publicKey":Ljava/security/PublicKey;
    .local v2, "serial":Ljava/math/BigInteger;
    .local v3, "notBefore":Ljava/util/Date;
    .local v4, "notAfter":Ljava/util/Date;
    .local v5, "subject":Ljavax/security/auth/x500/X500Principal;
    .local v6, "publicKey":Ljava/security/PublicKey;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
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
            "issuerCert",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .end local p5    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p6    # "publicKey":Ljava/security/PublicKey;
    .local v3, "serial":Ljava/math/BigInteger;
    .local v4, "notBefore":Ljava/util/Date;
    .local v5, "notAfter":Ljava/util/Date;
    .local v6, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v7, "publicKey":Ljava/security/PublicKey;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
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
            "issuer",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {p5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {p6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .local v3, "serial":Ljava/math/BigInteger;
    .local v4, "notBefore":Ljava/util/Date;
    .local v5, "notAfter":Ljava/util/Date;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
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
            "issuer",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 50
    invoke-interface {p6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .end local p5    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v3, "serial":Ljava/math/BigInteger;
    .local v4, "notBefore":Ljava/util/Date;
    .local v5, "notAfter":Ljava/util/Date;
    .local v6, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKey"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
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
            "issuer",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 35
    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p4, "notAfter"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
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
            "issuer",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 65
    invoke-interface {p6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Lorg/bouncycastle/asn1/x509/Time;
    .end local p4    # "notAfter":Lorg/bouncycastle/asn1/x509/Time;
    .end local p5    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v3, "serial":Ljava/math/BigInteger;
    .local v4, "notBefore":Lorg/bouncycastle/asn1/x509/Time;
    .local v5, "notAfter":Lorg/bouncycastle/asn1/x509/Time;
    .local v6, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 66
    return-void
.end method


# virtual methods
.method public copyAndAddExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLjava/security/cert/X509Certificate;)Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "critical",
            "certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->copyAndAddExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 143
    return-object p0
.end method

.class public Lorg/bouncycastle/cert/X509v1CertificateBuilder;
.super Ljava/lang/Object;
.source "X509v1CertificateBuilder.java"


# instance fields
.field private tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "dateLocale"    # Ljava/util/Locale;
    .param p6, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p7, "publicKeyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "dateLocale",
            "subject",
            "publicKeyInfo"
        }
    .end annotation

    .line 51
    new-instance v3, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v3, p3, p5}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v4, p4, p5}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p6    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p7    # "publicKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .local v1, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "serial":Ljava/math/BigInteger;
    .local v5, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v6, "publicKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cert/X509v1CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKeyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
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
            "publicKeyInfo"
        }
    .end annotation

    .line 34
    new-instance v3, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v3, p3}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v4, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v4, p4}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p5    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p6    # "publicKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .local v1, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "serial":Ljava/math/BigInteger;
    .local v5, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v6, "publicKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cert/X509v1CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 2
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p4, "notAfter"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKeyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
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
            "publicKeyInfo"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_1

    .line 71
    if-eqz p6, :cond_0

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)V

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p4}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p5}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p6}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 83
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "publicKeyInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "issuer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2
    .param p1, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v1CertificateBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->generateTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cert/CertUtils;->generateFullCert(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/TBSCertificate;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

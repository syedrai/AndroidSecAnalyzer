.class public Lorg/bouncycastle/cert/cmp/CertificateStatus;
.super Ljava/lang/Object;
.source "CertificateStatus.java"


# instance fields
.field private certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/asn1/cmp/CertStatus;)V
    .locals 0
    .param p1, "digestAlgFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .param p2, "certStatus"    # Lorg/bouncycastle/asn1/cmp/CertStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestAlgFinder",
            "certStatus"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    .line 25
    return-void
.end method


# virtual methods
.method public getCertRequestID()Ljava/math/BigInteger;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getCertReqId()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public isVerified(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z
    .locals 2
    .param p1, "cmpCert"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .param p2, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "digesterProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmpCert",
            "signatureAlgorithm",
            "digesterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {p1, p2, p3, v0}, Lorg/bouncycastle/cert/cmp/CMPUtil;->calculateCertHash(Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)[B

    move-result-object v0

    .line 50
    .local v0, "certHash":[B
    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getCertHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public isVerified(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z
    .locals 2
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .param p2, "digesterProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certHolder",
            "digesterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/bouncycastle/cert/cmp/CertificateStatus;->isVerified(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z

    move-result v0

    return v0
.end method

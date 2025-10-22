.class public Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
.super Ljava/lang/Object;
.source "CertificateConfirmationContentBuilder.java"


# instance fields
.field private acceptedCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/cmp/CMPCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private acceptedReqIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Integer;",
            ">;"
        }
    .end annotation
.end field

.field private acceptedSignatureAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 1
    .param p1, "digestAlgFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestAlgFinder"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedSignatureAlgorithms:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 39
    return-void
.end method


# virtual methods
.method public addAcceptedCertificate(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
    .locals 1
    .param p1, "cmpCertificate"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .param p2, "sigAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "certReqID"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmpCertificate",
            "sigAlg",
            "certReqID"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object p0
.end method

.method public addAcceptedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
    .locals 1
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .param p2, "certReqID"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certHolder",
            "certReqID"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->addAcceptedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAcceptedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
    .locals 2
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .param p2, "certReqID"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certHolder",
            "certReqID"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->addAcceptedCertificate(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
    .locals 5
    .param p1, "digesterProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digesterProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 65
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedSignatureAlgorithms:Ljava/util/List;

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 67
    invoke-static {v2, v3, p1, v4}, Lorg/bouncycastle/cert/cmp/CMPUtil;->calculateCertHash(Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)[B

    move-result-object v2

    .line 69
    .local v2, "certHash":[B
    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 71
    .local v3, "reqID":Lorg/bouncycastle/asn1/ASN1Integer;
    new-instance v4, Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/asn1/cmp/CertStatus;-><init>([BLorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 65
    .end local v2    # "certHash":[B
    .end local v3    # "reqID":Lorg/bouncycastle/asn1/ASN1Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v1

    .line 76
    .local v1, "content":Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    new-instance v2, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-object v2
.end method

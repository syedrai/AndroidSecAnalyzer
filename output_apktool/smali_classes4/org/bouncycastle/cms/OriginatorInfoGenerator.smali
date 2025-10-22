.class public Lorg/bouncycastle/cms/OriginatorInfoGenerator;
.super Ljava/lang/Object;
.source "OriginatorInfoGenerator.java"


# instance fields
.field private final origCRLs:Ljava/util/List;

.field private final origCerts:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2
    .param p1, "origCert"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origCert"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/Store;)V
    .locals 1
    .param p1, "origCerts"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origCerts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/OriginatorInfoGenerator;-><init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)V
    .locals 2
    .param p1, "origCerts"    # Lorg/bouncycastle/util/Store;
    .param p2, "origCRLs"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origCerts",
            "origCRLs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    goto :goto_0

    .line 38
    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    .line 41
    :goto_0
    if-eqz p2, :cond_1

    .line 43
    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    goto :goto_1

    .line 47
    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    .line 49
    :goto_1
    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 4

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 54
    .local v0, "certSet":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 55
    .local v1, "crlSet":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_1
    new-instance v2, Lorg/bouncycastle/cms/OriginatorInformation;

    new-instance v3, Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    return-object v2
.end method

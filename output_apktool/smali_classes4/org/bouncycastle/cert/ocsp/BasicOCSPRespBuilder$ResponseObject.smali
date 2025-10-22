.class Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
.super Ljava/lang/Object;
.source "BasicOCSPRespBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseObject"
.end annotation


# instance fields
.field certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

.field certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

.field extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 6
    .param p1, "certId"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lorg/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;
    .param p5, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certId",
            "certStatus",
            "thisUpdate",
            "nextUpdate",
            "extensions"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

    .line 55
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 57
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    .line 59
    :cond_0
    instance-of v1, p2, Lorg/bouncycastle/cert/ocsp/UnknownStatus;

    if-eqz v1, :cond_1

    .line 61
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    const/4 v2, 0x2

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    .line 65
    :cond_1
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/cert/ocsp/RevokedStatus;

    .line 67
    .local v1, "rs":Lorg/bouncycastle/cert/ocsp/RevokedStatus;
    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->hasRevocationReason()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v3, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 70
    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationReason()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    .line 74
    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v3, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 75
    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    .line 79
    .end local v1    # "rs":Lorg/bouncycastle/cert/ocsp/RevokedStatus;
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p3}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 81
    if-eqz p4, :cond_3

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_1

    .line 87
    :cond_3
    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 90
    :goto_1
    iput-object p5, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 91
    return-void
.end method


# virtual methods
.method public toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    iget-object v3, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v4, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v5, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v0
.end method

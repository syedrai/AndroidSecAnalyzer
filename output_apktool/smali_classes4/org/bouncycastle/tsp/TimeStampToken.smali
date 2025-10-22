.class public Lorg/bouncycastle/tsp/TimeStampToken;
.super Ljava/lang/Object;
.source "TimeStampToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/TimeStampToken$CertID;
    }
.end annotation


# instance fields
.field certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

.field tsToken:Lorg/bouncycastle/cms/CMSSignedData;

.field tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

.field tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "contentInfo"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getSignedData(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 8
    .param p1, "signedData"    # Lorg/bouncycastle/cms/CMSSignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedContentTypeOID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    .line 83
    .local v0, "signers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/SignerInformation;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 90
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/SignerInformation;

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedContent()Lorg/bouncycastle/cms/CMSTypedData;

    move-result-object v1

    .line 95
    .local v1, "content":Lorg/bouncycastle/cms/CMSProcessable;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v2}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 99
    new-instance v3, Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;-><init>(Lorg/bouncycastle/asn1/tsp/TSTInfo;)V

    iput-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    .line 101
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    .line 103
    .local v3, "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificate;

    move-result-object v5

    .line 107
    .local v5, "signCert":Lorg/bouncycastle/asn1/ess/SigningCertificate;
    new-instance v6, Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v7

    aget-object v4, v7, v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;-><init>(Lorg/bouncycastle/asn1/ess/ESSCertID;)V

    iput-object v6, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    .line 108
    .end local v5    # "signCert":Lorg/bouncycastle/asn1/ess/SigningCertificate;
    goto :goto_0

    .line 111
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v5}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v5

    .line 113
    .end local v3    # "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    .local v5, "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificateV2;

    move-result-object v3

    .line 120
    .local v3, "signCertV2":Lorg/bouncycastle/asn1/ess/SigningCertificateV2;
    new-instance v6, Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    move-result-object v7

    aget-object v4, v7, v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;-><init>(Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V

    iput-object v6, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    .line 126
    .end local v1    # "content":Lorg/bouncycastle/cms/CMSProcessable;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "signCertV2":Lorg/bouncycastle/asn1/ess/SigningCertificateV2;
    .end local v5    # "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    :goto_0
    nop

    .line 127
    return-void

    .line 115
    .restart local v1    # "content":Lorg/bouncycastle/cms/CMSProcessable;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_1
    new-instance v3, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v4, "no signing certificate attribute found, time stamp invalid."

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/SignerInformation;>;"
    .end local p1    # "signedData":Lorg/bouncycastle/cms/CMSSignedData;
    throw v3
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "content":Lorg/bouncycastle/cms/CMSProcessable;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    .restart local v0    # "signers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/SignerInformation;>;"
    .restart local p1    # "signedData":Lorg/bouncycastle/cms/CMSSignedData;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    .end local v1    # "e":Lorg/bouncycastle/cms/CMSException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 86
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time-stamp token signed by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signers, but it must contain just the TSA signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "signers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/SignerInformation;>;"
    :cond_3
    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "ContentInfo object not for a time stamp."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSignedData(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 5
    .param p0, "contentInfo"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 63
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TSP parsing error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509AttributeCertificateHolder;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getAttributeCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    const-string v1, "DL"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSID()Lorg/bouncycastle/cms/SignerId;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    return-object v0
.end method

.method public getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 5
    .param p1, "sigVerifier"    # Lorg/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigVerifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v0
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :cond_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 9
    .param p1, "sigVerifier"    # Lorg/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigVerifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/TSPValidationException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    .line 195
    .local v0, "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    .line 197
    .local v1, "calc":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 199
    .local v2, "cOut":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 202
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getCertHash()[B

    move-result-object v3

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 207
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 209
    new-instance v3, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    .line 211
    .local v3, "issuerSerial":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    iget-object v4, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    iget-object v4, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 217
    .local v4, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .line 219
    .local v5, "found":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-eq v6, v7, :cond_1

    .line 221
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    const/4 v5, 0x1

    .line 224
    goto :goto_1

    .line 219
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 228
    .end local v6    # "i":I
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    .line 230
    :cond_2
    new-instance v6, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v7, "certificate name does not match certID for signature. "

    invoke-direct {v6, v7}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    throw v6

    .line 213
    .end local v4    # "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "found":Z
    .restart local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    :cond_3
    new-instance v4, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v5, "certificate serial number does not match certID for signature."

    invoke-direct {v4, v5}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    throw v4

    .line 234
    .end local v3    # "issuerSerial":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .restart local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    :cond_4
    :goto_2
    invoke-static {v0}, Lorg/bouncycastle/tsp/TSPUtil;->validateCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    .line 236
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 264
    .end local v0    # "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v1    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v2    # "cOut":Ljava/io/OutputStream;
    nop

    .line 265
    return-void

    .line 243
    .restart local v0    # "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    .restart local v1    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    .restart local v2    # "cOut":Ljava/io/OutputStream;
    :cond_5
    new-instance v3, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string/jumbo v4, "signature not created by certificate."

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    throw v3

    .line 238
    .restart local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    :cond_6
    new-instance v3, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v4, "certificate not valid when time stamp created."

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    throw v3

    .line 204
    .restart local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    :cond_7
    new-instance v3, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v4, "certificate hash does not match certID hash."

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    throw v3
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v1    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v2    # "cOut":Ljava/io/OutputStream;
    .restart local p1    # "sigVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to create digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 257
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem processing certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 248
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 250
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :cond_8
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    .end local v0    # "e":Lorg/bouncycastle/cms/CMSException;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "verifier provider needs an associated certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

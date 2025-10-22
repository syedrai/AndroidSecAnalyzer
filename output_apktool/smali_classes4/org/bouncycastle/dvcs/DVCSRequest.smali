.class public Lorg/bouncycastle/dvcs/DVCSRequest;
.super Lorg/bouncycastle/dvcs/DVCSMessage;
.source "DVCSRequest.java"


# instance fields
.field private asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

.field private data:Lorg/bouncycastle/dvcs/DVCSRequestData;

.field private reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 5
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
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSMessage;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 48
    sget-object v0, Lorg/bouncycastle/asn1/dvcs/DVCSObjectIdentifiers;->id_ct_DVCSRequestData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    nop

    .line 69
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getRequestInformation()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSRequestInfo;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/dvcs/DVCSRequestInfo;->getServiceType()I

    move-result v0

    .line 72
    .local v0, "service":I
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 74
    new-instance v1, Lorg/bouncycastle/dvcs/CPDRequestData;

    iget-object v2, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/dvcs/CPDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    iput-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    goto :goto_1

    .line 76
    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VSD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 78
    new-instance v1, Lorg/bouncycastle/dvcs/VSDRequestData;

    iget-object v2, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/dvcs/VSDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    iput-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    goto :goto_1

    .line 80
    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 82
    new-instance v1, Lorg/bouncycastle/dvcs/VPKCRequestData;

    iget-object v2, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/dvcs/VPKCRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    iput-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    goto :goto_1

    .line 84
    :cond_3
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 86
    new-instance v1, Lorg/bouncycastle/dvcs/CCPDRequestData;

    iget-object v2, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/dvcs/CCPDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    iput-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    .line 92
    :goto_1
    return-void

    .line 90
    :cond_4
    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    .end local v0    # "service":I
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "ContentInfo not a DVCS Request"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 1
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
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    return-object v0
.end method

.method public getData()Lorg/bouncycastle/dvcs/DVCSRequestData;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    return-object v0
.end method

.method public getRequestInfo()Lorg/bouncycastle/dvcs/DVCSRequestInfo;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    return-object v0
.end method

.method public getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

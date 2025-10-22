.class public Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSAuthenticatedDataParser.java"


# instance fields
.field private authAttrNotRead:Z

.field private authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

.field private mac:[B

.field private macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

.field private unauthAttrNotRead:Z

.field private unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "envelopedData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "envelopedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 10
    .param p1, "envelopedData"    # Ljava/io/InputStream;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "envelopedData",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    .line 108
    new-instance v0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    .line 115
    .local v0, "info":Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 124
    .local v1, "recipientInfos":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 129
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 131
    .local v2, "digestAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v3, 0x4

    if-eqz v2, :cond_2

    .line 133
    if-eqz p2, :cond_1

    .line 141
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v4

    .line 142
    .local v4, "data":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    new-instance v5, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    .line 143
    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v5, "readable":Lorg/bouncycastle/cms/CMSReadable;
    :try_start_0
    new-instance v3, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-interface {p2, v2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v6

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-direct {v3, v6, v7, v5}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    .line 149
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-static {v1, v3, v6}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    nop

    .line 155
    .end local v4    # "data":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .end local v5    # "readable":Lorg/bouncycastle/cms/CMSReadable;
    goto :goto_0

    .line 151
    .restart local v4    # "data":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .restart local v5    # "readable":Lorg/bouncycastle/cms/CMSReadable;
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v6, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v3}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unable to create digest calculator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 135
    .end local v3    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    .end local v4    # "data":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .end local v5    # "readable":Lorg/bouncycastle/cms/CMSReadable;
    :cond_1
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v4

    .line 162
    .restart local v4    # "data":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    new-instance v5, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    .line 163
    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .restart local v5    # "readable":Lorg/bouncycastle/cms/CMSReadable;
    new-instance v3, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-direct {v3, v6, v7, v5}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    .line 167
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-static {v1, v3, v6}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    .line 171
    .end local v4    # "data":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .end local v5    # "readable":Lorg/bouncycastle/cms/CMSReadable;
    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "envelopedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "envelopedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;)V

    .line 83
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "envelopedData"    # [B
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "envelopedData",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 91
    return-void
.end method

.method private getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    .line 243
    .local v0, "set":Lorg/bouncycastle/asn1/ASN1SetParser;
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 248
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    .line 249
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-interface {v1, v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 252
    .end local v0    # "set":Lorg/bouncycastle/asn1/ASN1SetParser;
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 268
    .local v0, "set":Lorg/bouncycastle/asn1/ASN1Set;
    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 274
    .end local v0    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getContentDigest()[B
    .locals 2

    .line 302
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMac()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 231
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgOID()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgParams()[B
    .locals 5

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception getting encryption parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrNotRead:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrNotRead:Z

    .line 289
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->getAttributesTable(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

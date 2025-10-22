.class public Lorg/bouncycastle/cms/CMSEnvelopedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSEnvelopedDataParser.java"


# instance fields
.field private attrNotRead:Z

.field private encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
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

    .line 71
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->attrNotRead:Z

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 94
    .local v1, "recipientInfos":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    move-result-object v2

    .line 95
    .local v2, "encInfo":Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 96
    new-instance v3, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    .line 97
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getEncryptedContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v3, "readable":Lorg/bouncycastle/cms/CMSReadable;
    new-instance v4, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 99
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    .line 104
    .local v4, "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v1, v5, v4}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    .line 106
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

    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 5

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 128
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

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnprotectedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->attrNotRead:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->attrNotRead:Z

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getUnprotectedAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->getAttributesTable(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

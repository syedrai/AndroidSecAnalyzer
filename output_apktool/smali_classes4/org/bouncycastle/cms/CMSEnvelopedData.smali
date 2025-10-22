.class public Lorg/bouncycastle/cms/CMSEnvelopedData;
.super Ljava/lang/Object;
.source "CMSEnvelopedData.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;


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
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 8
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
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 69
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v1

    .line 76
    .local v1, "envData":Lorg/bouncycastle/asn1/cms/EnvelopedData;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    .line 84
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    .line 89
    .local v2, "recipientInfos":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v3

    .line 90
    .local v3, "encInfo":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    new-instance v4, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    .line 92
    .local v4, "readable":Lorg/bouncycastle/cms/CMSReadable;
    new-instance v5, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 93
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    .line 98
    .local v5, "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v2, v6, v5}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    .line 101
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getUnprotectedAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "envData":Lorg/bouncycastle/asn1/cms/EnvelopedData;
    .end local v2    # "recipientInfos":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v3    # "encInfo":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .end local v4    # "readable":Lorg/bouncycastle/cms/CMSReadable;
    .end local v5    # "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    nop

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 103
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
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
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 5

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 153
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

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnprotectedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

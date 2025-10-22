.class public Lorg/bouncycastle/cms/CMSAuthenticatedData;
.super Ljava/lang/Object;
.source "CMSAuthenticatedData.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private mac:[B

.field private macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "authData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "authData"    # Ljava/io/InputStream;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authData",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 64
    return-void
.end method

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
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 11
    .param p1, "contentInfo"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentInfo",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 80
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    move-result-object v0

    .line 82
    .local v0, "authData":Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    .line 90
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 92
    .local v1, "recipientInfos":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 94
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getAuthAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 95
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->mac:[B

    .line 96
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 101
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    .line 102
    .local v2, "encInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v3, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    .line 103
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 104
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    .line 109
    .local v3, "readable":Lorg/bouncycastle/cms/CMSReadable;
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_7

    .line 111
    if-eqz p2, :cond_6

    .line 116
    new-instance v4, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 118
    .local v4, "table":Lorg/bouncycastle/asn1/cms/AttributeTable;
    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    .line 119
    .local v5, "protectionAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_5

    .line 124
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 126
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v8

    .line 127
    .local v8, "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-ne v9, v7, :cond_3

    .line 132
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    aget-object v6, v7, v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v6

    .line 134
    .local v6, "algorithmProtection":Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    iget-object v9, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v7, v9}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v7, Lorg/bouncycastle/cms/CMSException;

    const-string v9, "CMS Algorithm Identifier Protection check failed for macAlgorithm"

    invoke-direct {v7, v9}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_2
    new-instance v7, Lorg/bouncycastle/cms/CMSException;

    const-string v9, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {v7, v9}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    .end local v6    # "algorithmProtection":Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    :cond_3
    new-instance v6, Lorg/bouncycastle/cms/CMSException;

    const-string v7, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    .end local v8    # "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_4
    :goto_0
    :try_start_0
    new-instance v6, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    .line 147
    .local v6, "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    iget-object v7, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-interface {v6, v7}, Lorg/bouncycastle/cms/CMSSecureReadable;->setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 148
    iget-object v7, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v1, v7, v6}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v6    # "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    nop

    .line 154
    .end local v4    # "table":Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v5    # "protectionAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_1

    .line 150
    .restart local v4    # "table":Lorg/bouncycastle/asn1/cms/AttributeTable;
    .restart local v5    # "protectionAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v6

    .line 152
    .local v6, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v7, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v6}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to create digest calculator: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 121
    .end local v6    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :cond_5
    new-instance v6, Lorg/bouncycastle/cms/CMSException;

    const-string v7, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .end local v4    # "table":Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v5    # "protectionAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    const-string v5, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {v4, v5}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_7
    new-instance v4, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    .line 158
    .local v4, "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v1, v5, v4}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    .line 160
    .end local v4    # "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    :goto_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "authData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 41
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "authData"    # [B
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authData",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public getContentDigest()[B
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;->getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

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

    .line 280
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgOID()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgParams()[B
    .locals 5

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 207
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

    .line 184
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

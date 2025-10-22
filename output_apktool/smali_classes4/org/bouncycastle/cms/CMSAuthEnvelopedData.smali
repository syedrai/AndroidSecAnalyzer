.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
.super Ljava/lang/Object;
.source "CMSAuthEnvelopedData.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

.field private authEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private mac:[B

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method static bridge synthetic -$$Nest$fgetauthAttrs(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmac(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->mac:[B

    return-object p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "authEnvData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authEnvData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 44
    return-void
.end method

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
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;

    move-result-object v0

    .line 53
    .local v0, "authEnvData":Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    .line 61
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 66
    .local v1, "recipientInfos":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getAuthEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v2

    .line 67
    .local v2, "authEncInfo":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->authEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->mac:[B

    .line 71
    new-instance v3, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;

    invoke-direct {v3, p0, v2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;-><init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;)V

    .line 126
    .local v3, "secureReadable":Lorg/bouncycastle/cms/CMSSecureReadable;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getAuthAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 128
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;->getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 133
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->authEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    .line 135
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "authEnvData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authEnvData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

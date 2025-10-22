.class public Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "CMSEnvelopedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    .line 44
    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 10
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "contentEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "contentEncryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 51
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 53
    .local v0, "recipientInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 59
    .local v2, "cOut":Ljava/io/OutputStream;
    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 63
    instance-of v3, p2, Lorg/bouncycastle/operator/OutputAEADEncryptor;

    if-eqz v3, :cond_0

    .line 65
    move-object v3, p2

    check-cast v3, Lorg/bouncycastle/operator/OutputAEADEncryptor;

    invoke-interface {v3}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getMAC()[B

    move-result-object v3

    .line 67
    .local v3, "mac":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v2    # "cOut":Ljava/io/OutputStream;
    .end local v3    # "mac":[B
    :cond_0
    nop

    .line 75
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 77
    .local v2, "encryptedContent":[B
    invoke-static {p1, p2, v2}, Lorg/bouncycastle/cms/CMSUtils;->getEncryptedContentInfo(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;[B)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v3

    .line 79
    .local v3, "eci":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v4}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 81
    .local v4, "unprotectedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v5, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v6, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    iget-object v8, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v7, v8, v9, v3, v4}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    .local v5, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v6, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-direct {v6, v5}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v6

    .line 70
    .end local v2    # "encryptedContent":[B
    .end local v3    # "eci":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .end local v4    # "unprotectedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v5    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 1
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "contentEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "contentEncryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object v0

    return-object v0
.end method

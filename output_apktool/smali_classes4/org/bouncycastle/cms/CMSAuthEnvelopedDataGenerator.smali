.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.source "CMSAuthEnvelopedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;-><init>()V

    .line 25
    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 13
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "contentEncryptor"    # Lorg/bouncycastle/operator/OutputAEADEncryptor;
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

    .line 32
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 34
    .local v1, "recipientInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 38
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p2, v2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 40
    .local v0, "cOut":Ljava/io/OutputStream;
    invoke-interface {p1, v0}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 42
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v3, p2}, Lorg/bouncycastle/cms/CMSUtils;->processAuthAttrSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    move-object v8, v3

    .line 44
    .local v8, "authenticatedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "cOut":Ljava/io/OutputStream;
    nop

    .line 51
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 52
    .local v0, "encryptedContent":[B
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getMAC()[B

    move-result-object v3

    .line 54
    .local v3, "mac":[B
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/cms/CMSUtils;->getEncryptedContentInfo(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;[B)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v7

    .line 56
    .local v7, "eci":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v4}, Lorg/bouncycastle/cms/CMSUtils;->getAttrDLSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    .line 58
    .local v10, "unprotectedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v11, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v12, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v9, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v11, v12, v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 62
    .local v11, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v4, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-direct {v4, v11}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v4

    .line 46
    .end local v0    # "encryptedContent":[B
    .end local v3    # "mac":[B
    .end local v7    # "eci":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .end local v8    # "authenticatedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v10    # "unprotectedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v11    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to process authenticated content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 1
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "contentEncryptor"    # Lorg/bouncycastle/operator/OutputAEADEncryptor;
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

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    move-result-object v0

    return-object v0
.end method

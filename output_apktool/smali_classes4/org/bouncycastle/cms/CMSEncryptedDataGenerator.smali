.class public Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;
.super Lorg/bouncycastle/cms/CMSEncryptedGenerator;
.source "CMSEncryptedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEncryptedGenerator;-><init>()V

    .line 42
    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;
    .locals 9
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

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 58
    .local v1, "cOut":Ljava/io/OutputStream;
    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "cOut":Ljava/io/OutputStream;
    nop

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 69
    .local v1, "encryptedContent":[B
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 71
    .local v2, "encAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 73
    .local v3, "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 74
    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 73
    invoke-static {v4, v2, v1}, Lorg/bouncycastle/cms/CMSUtils;->getEncryptedContentInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v4

    .line 78
    .local v4, "eci":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v5}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 80
    .local v5, "unprotectedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v6, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v7, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/cms/EncryptedData;

    invoke-direct {v8, v4, v5}, Lorg/bouncycastle/asn1/cms/EncryptedData;-><init>(Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    .local v6, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v7, Lorg/bouncycastle/cms/CMSEncryptedData;

    invoke-direct {v7, v6}, Lorg/bouncycastle/cms/CMSEncryptedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v7

    .line 62
    .end local v1    # "encryptedContent":[B
    .end local v2    # "encAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "eci":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .end local v5    # "unprotectedAttrSet":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;
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

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;

    move-result-object v0

    return-object v0
.end method

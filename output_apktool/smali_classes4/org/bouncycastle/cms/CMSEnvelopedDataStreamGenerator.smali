.class public Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "CMSEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
    }
.end annotation


# instance fields
.field private _berEncodeRecipientSet:Z

.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    .line 48
    return-void
.end method

.method private doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "dataType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataType",
            "out",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 86
    invoke-interface {p3}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 88
    .local v0, "recipientInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method private getVersion(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 4
    .param p1, "recipientInfos"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientInfos"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v3, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/DLSet;-><init>()V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method protected open(Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "recipientInfos"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p3, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "recipientInfos",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 138
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "exception decoding algorithm parameters."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 8
    .param p1, "dataType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "recipientInfos"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p4, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataType",
            "out",
            "recipientInfos",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 103
    .local v5, "cGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 108
    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v6, v0, v2, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 110
    .local v6, "envGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->getVersion(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-static {v6, v0}, Lorg/bouncycastle/cms/CMSUtils;->addOriginatorInfoToGenerator(Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    .line 114
    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    invoke-static {p3, v6, v0}, Lorg/bouncycastle/cms/CMSUtils;->addRecipientInfosToGenerator(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/BERSequenceGenerator;Z)V

    .line 116
    new-instance v7, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v7, "eiGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v7, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 120
    invoke-interface {p4}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 122
    .local v0, "encAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 124
    nop

    .line 125
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_bufferSize:I

    .line 124
    invoke-static {v1, v2, v2, v3}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v4

    .line 127
    .local v4, "octetStream":Ljava/io/OutputStream;
    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;

    move-object v2, p0

    move-object v3, p4

    .end local p4    # "encryptor":Lorg/bouncycastle/operator/OutputEncryptor;
    .local v3, "encryptor":Lorg/bouncycastle/operator/OutputEncryptor;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "dataType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataType",
            "out",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setBEREncodeRecipients(Z)V
    .locals 0
    .param p1, "berEncodeRecipientSet"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "berEncodeRecipientSet"
        }
    .end annotation

    .line 67
    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    .line 68
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 58
    iput p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_bufferSize:I

    .line 59
    return-void
.end method

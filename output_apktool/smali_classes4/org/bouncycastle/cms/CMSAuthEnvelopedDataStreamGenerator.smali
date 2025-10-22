.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.source "CMSAuthEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;
    }
.end annotation


# instance fields
.field private _berEncodeRecipientSet:Z

.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;-><init>()V

    .line 29
    return-void
.end method

.method private doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "dataType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encryptor"    # Lorg/bouncycastle/operator/OutputAEADEncryptor;
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

    .line 57
    invoke-interface {p3}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 59
    .local v0, "recipientInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected open(Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "recipientInfos"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p3, "encryptor"    # Lorg/bouncycastle/operator/OutputAEADEncryptor;
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

    .line 109
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "exception decoding algorithm parameters."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encryptor"    # Lorg/bouncycastle/operator/OutputAEADEncryptor;
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

    .line 127
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Ljava/io/OutputStream;
    .locals 8
    .param p1, "dataType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "recipientInfos"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p4, "encryptor"    # Lorg/bouncycastle/operator/OutputAEADEncryptor;
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

    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 74
    .local v5, "cGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 79
    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 81
    .local v6, "authEnvGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-static {v6, v0}, Lorg/bouncycastle/cms/CMSUtils;->addOriginatorInfoToGenerator(Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    .line 85
    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    invoke-static {p3, v6, v0}, Lorg/bouncycastle/cms/CMSUtils;->addRecipientInfosToGenerator(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/BERSequenceGenerator;Z)V

    .line 87
    new-instance v7, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 89
    .local v7, "eiGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v7, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 91
    invoke-interface {p4}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 93
    .local v0, "encAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 95
    nop

    .line 96
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->_bufferSize:I

    .line 95
    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v4

    .line 98
    .local v4, "octetStream":Ljava/io/OutputStream;
    new-instance v1, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;

    move-object v2, p0

    move-object v3, p4

    .end local p4    # "encryptor":Lorg/bouncycastle/operator/OutputAEADEncryptor;
    .local v3, "encryptor":Lorg/bouncycastle/operator/OutputAEADEncryptor;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v1
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

    .line 48
    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    .line 49
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

    .line 39
    iput p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->_bufferSize:I

    .line 40
    return-void
.end method

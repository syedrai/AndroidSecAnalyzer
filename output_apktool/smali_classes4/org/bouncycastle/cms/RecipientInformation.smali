.class public abstract Lorg/bouncycastle/cms/RecipientInformation;
.super Ljava/lang/Object;
.source "RecipientInformation.java"


# instance fields
.field protected keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private operator:Lorg/bouncycastle/cms/RecipientOperator;

.field private resultMac:[B

.field protected rid:Lorg/bouncycastle/cms/RecipientId;

.field protected secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 0
    .param p1, "keyEncAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "messageAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyEncAlg",
            "messageAlgorithm",
            "secureReadable"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    iput-object p3, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    .line 28
    return-void
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/cms/Recipient;)[B
    .locals 5
    .param p1, "recipient"    # Lorg/bouncycastle/cms/Recipient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse internal stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getContentDigest()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    instance-of v0, v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    check-cast v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;->getDigest()[B

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentStream(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 4
    .param p1, "recipient"    # Lorg/bouncycastle/cms/Recipient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->isAEADBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    check-cast v0, Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/RecipientOperator;->getAADStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;->setAADStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->hasAdditionalData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v1}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object v0

    .line 168
    :cond_1
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v1}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    iget-object v3, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v3}, Lorg/bouncycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgParams()[B
    .locals 5

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
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

.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMac()[B
    .locals 5

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->isMacBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadable;->hasAdditionalData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->secureReadable:Lorg/bouncycastle/cms/CMSSecureReadable;

    invoke-interface {v2}, Lorg/bouncycastle/cms/CMSSecureReadable;->getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to drain input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->operator:Lorg/bouncycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientOperator;->getMac()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->resultMac:[B

    return-object v0
.end method

.method public getRID()Lorg/bouncycastle/cms/RecipientId;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-object v0
.end method

.method protected abstract getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

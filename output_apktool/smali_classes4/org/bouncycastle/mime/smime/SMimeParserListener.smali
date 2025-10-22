.class public abstract Lorg/bouncycastle/mime/smime/SMimeParserListener;
.super Ljava/lang/Object;
.source "SMimeParserListener.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserListener;


# instance fields
.field private digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

.field private parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "content handling not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;
    .locals 1
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers"
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-virtual {v0}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->getDigestCalculators()[Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lorg/bouncycastle/mime/ConstantMimeContext;

    invoke-direct {v0}, Lorg/bouncycastle/mime/ConstantMimeContext;-><init>()V

    return-object v0
.end method

.method public envelopedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/cms/OriginatorInformation;Lorg/bouncycastle/cms/RecipientInformationStore;)V
    .locals 2
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "originatorInformation"    # Lorg/bouncycastle/cms/OriginatorInformation;
    .param p4, "recipients"    # Lorg/bouncycastle/cms/RecipientInformationStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "originatorInformation",
            "recipients"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "envelopedData handling not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 10
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    .line 51
    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->content(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    move-object v4, p1

    move-object v5, p2

    goto/16 :goto_3

    .line 71
    :cond_2
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v0, "envelopedDataParser":Lorg/bouncycastle/cms/CMSEnvelopedDataParser;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->envelopedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/cms/OriginatorInformation;Lorg/bouncycastle/cms/RecipientInformationStore;)V

    .line 75
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->close()V
    :try_end_1
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .end local v0    # "envelopedDataParser":Lorg/bouncycastle/cms/CMSEnvelopedDataParser;
    move-object v4, p1

    move-object v5, p2

    goto :goto_3

    .line 82
    :catch_0
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    goto :goto_4

    .line 53
    :cond_3
    :goto_1
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "hashes":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    array-length v2, v2
    :try_end_2
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v1, v2, :cond_4

    .line 57
    :try_start_3
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 59
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    .end local v1    # "i":I
    :cond_4
    :try_start_4
    invoke-static {p3}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 64
    .local v1, "sigBlock":[B
    new-instance v2, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;[B)V

    .line 66
    .local v2, "signedData":Lorg/bouncycastle/cms/CMSSignedData;
    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getAttributeCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v8

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v9
    :try_end_4
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "parserContext":Lorg/bouncycastle/mime/MimeParserContext;
    .end local p2    # "headers":Lorg/bouncycastle/mime/Headers;
    .local v4, "parserContext":Lorg/bouncycastle/mime/MimeParserContext;
    .local v5, "headers":Lorg/bouncycastle/mime/Headers;
    :try_start_5
    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->signedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/cms/SignerInformationStore;)V
    :try_end_5
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_5 .. :try_end_5} :catch_1

    .line 67
    .end local v0    # "hashes":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B>;"
    .end local v1    # "sigBlock":[B
    .end local v2    # "signedData":Lorg/bouncycastle/cms/CMSSignedData;
    nop

    .line 85
    :goto_3
    nop

    .line 86
    return-void

    .line 82
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v4    # "parserContext":Lorg/bouncycastle/mime/MimeParserContext;
    .end local v5    # "headers":Lorg/bouncycastle/mime/Headers;
    .restart local p1    # "parserContext":Lorg/bouncycastle/mime/MimeParserContext;
    .restart local p2    # "headers":Lorg/bouncycastle/mime/Headers;
    :catch_2
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    .line 84
    .end local p1    # "parserContext":Lorg/bouncycastle/mime/MimeParserContext;
    .end local p2    # "headers":Lorg/bouncycastle/mime/Headers;
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    .restart local v4    # "parserContext":Lorg/bouncycastle/mime/MimeParserContext;
    .restart local v5    # "headers":Lorg/bouncycastle/mime/Headers;
    :goto_4
    new-instance p1, Lorg/bouncycastle/mime/MimeIOException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMS failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public signedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/cms/SignerInformationStore;)V
    .locals 2
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p3, "certificates"    # Lorg/bouncycastle/util/Store;
    .param p4, "CRLs"    # Lorg/bouncycastle/util/Store;
    .param p5, "attributeCertificates"    # Lorg/bouncycastle/util/Store;
    .param p6, "signers"    # Lorg/bouncycastle/cms/SignerInformationStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers",
            "certificates",
            "CRLs",
            "attributeCertificates",
            "signers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "signedData handling not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

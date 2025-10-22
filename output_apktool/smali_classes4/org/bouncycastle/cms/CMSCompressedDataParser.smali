.class public Lorg/bouncycastle/cms/CMSCompressedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSCompressedDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "compressedData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "compressedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSCompressedDataParser;-><init>(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/operator/InputExpanderProvider;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 7
    .param p1, "expanderProvider"    # Lorg/bouncycastle/operator/InputExpanderProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expanderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSCompressedDataParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/CompressedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 60
    .local v0, "comData":Lorg/bouncycastle/asn1/cms/CompressedDataParser;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v1

    .line 61
    .local v1, "content":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->getCompressionAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/operator/InputExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;

    move-result-object v2

    .line 63
    .local v2, "expander":Lorg/bouncycastle/operator/InputExpander;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 65
    .local v3, "bytes":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    new-instance v4, Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/bouncycastle/operator/InputExpander;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 67
    .end local v0    # "comData":Lorg/bouncycastle/asn1/cms/CompressedDataParser;
    .end local v1    # "content":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .end local v2    # "expander":Lorg/bouncycastle/operator/InputExpander;
    .end local v3    # "bytes":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "IOException reading compressed content."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

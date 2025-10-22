.class public Lorg/bouncycastle/cms/CMSCompressedDataGenerator;
.super Ljava/lang/Object;
.source "CMSCompressedDataGenerator.java"


# static fields
.field public static final ZLIB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->zlibCompress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSCompressedDataGenerator;->ZLIB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputCompressor;)Lorg/bouncycastle/cms/CMSCompressedData;
    .locals 6
    .param p1, "content"    # Lorg/bouncycastle/cms/CMSTypedData;
    .param p2, "compressor"    # Lorg/bouncycastle/operator/OutputCompressor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "compressor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/OutputCompressor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 53
    .local v1, "zOut":Ljava/io/OutputStream;
    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 57
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputCompressor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 58
    .local v2, "comAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "zOut":Ljava/io/OutputStream;
    .local v3, "comOcts":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 66
    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 68
    .local v0, "comContent":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v4, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-direct {v5, v2, v0}, Lorg/bouncycastle/asn1/cms/CompressedData;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    .local v1, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v4, Lorg/bouncycastle/cms/CMSCompressedData;

    invoke-direct {v4, v1}, Lorg/bouncycastle/cms/CMSCompressedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v4

    .line 60
    .end local v0    # "comContent":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v1    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v2    # "comAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "comOcts":Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "exception encoding data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

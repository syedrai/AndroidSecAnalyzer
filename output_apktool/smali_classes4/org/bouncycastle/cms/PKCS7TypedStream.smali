.class public Lorg/bouncycastle/cms/PKCS7TypedStream;
.super Lorg/bouncycastle/cms/CMSTypedStream;
.source "PKCS7TypedStream.java"


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 22
    return-void
.end method

.method private getContentStream(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;
    .locals 5
    .param p1, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, "encoded":[B
    const/4 v1, 0x0

    .line 53
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v1, v0, v1

    const/16 v3, 0x1f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    .line 55
    :goto_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 60
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, v0, v2

    .line 61
    .local v2, "dl":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_2

    .line 63
    and-int/lit8 v3, v2, 0x7f

    add-int/2addr v1, v3

    .line 66
    :cond_2
    new-instance v3, Ljava/io/ByteArrayInputStream;

    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 45
    return-void
.end method

.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 5

    .line 33
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/PKCS7TypedStream;->getContentStream(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSRuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to convert content to stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

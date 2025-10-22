.class public Lorg/bouncycastle/cms/PKCS7ProcessableObject;
.super Ljava/lang/Object;
.source "PKCS7ProcessableObject.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;


# instance fields
.field private final structure:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "type"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "structure"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "structure"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 24
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "cOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const-string v1, "DER"

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 38
    .local v0, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 42
    .local v3, "enc":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 43
    .end local v3    # "enc":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 44
    .end local v0    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    goto :goto_2

    .line 47
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    .local v0, "encoded":[B
    const/4 v1, 0x1

    .line 50
    .local v1, "index":I
    :goto_1
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x7f

    if-le v2, v3, :cond_2

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 57
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    .end local v0    # "encoded":[B
    .end local v1    # "index":I
    :goto_2
    return-void
.end method

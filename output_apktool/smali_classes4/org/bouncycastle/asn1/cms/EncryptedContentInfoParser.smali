.class public Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;
.super Ljava/lang/Object;
.source "EncryptedContentInfoParser.java"


# instance fields
.field private _contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private _contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private _encryptedContent:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 35
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 36
    return-void
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncryptedContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
